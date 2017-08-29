ActiveAdmin.register Ad do
#  scope :all, default: true
#  index do
#    column :title
#    column "Price", sortable: :price do |ad|
#      number_to_currency ad.price
#    end
#    actions
#  end
#  filter :title
#    filter :price
#    filter :created_at
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
 #permit_params do
  # permitted = [:permitted, :attributes]
  # permitted << :other if params[:action] == 'create' && current_user.admin?
  # permitted
# end
controller do
    def permitted_params
      params.permit ad: [:title, :description, :image_url, :price]
    end
  end
end
