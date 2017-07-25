class ApplicationController < ActionController::Base
before_filter :authenticate_user!, :except => [:show, :index]

before_filter :configure_permitted_parameters, if: :devise_controller?
protect_from_forgery with: :exception
  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = "Access denied!"
    redirect_to root_url
  end

protected
def configure_permitted_parameters
devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit({ roles: [] }, :email, :password, :password_confirmation, :username) }
end
#  protected
  #def configure_permitted_parameters
  #  devise_parameter_sanitizer.for(:sign_up) << :name
  #  devise_parameter_sanitizer.for(:account_update) << :name
  #end

#  protect_from_forgery with: :exception
#     def after_sign_in_path_for(resource)
#  current_user_path
#  end
#     def after_sign_out_path_for(resource_or_scope)
#  request.referrer
#  end
end
