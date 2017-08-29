ActiveAdmin.register_page "Dashboard" do

 #menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  #content title: proc{ I18n.t("active_admin.dashboard") } do
  #  div class: "blank_slate_container", id: "dashboard_default_message" do
  #    span class: "blank_slate" do
  #      span I18n.t("active_admin.dashboard_welcome.welcome")
  #      small I18n.t("active_admin.dashboard_welcome.call_to_action")
  #    end
  #  end

    # Here is an example of a simple dashboard with columns and panels.
    #
  content :title => proc{ I18n.t("active_admin.dashboard") } do
   columns do
     column do
       panel "Recent Ads" do
         table_for Ad.order("id desc").limit(5) do
           column :name do |ad|
             link_to ad.title, [:admin, ad]
           end
           column :created_at
         end
         strong (link_to "Show All Ad" , :ads )
       end
     end
   end
 end
end
    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
#  end # content
#end


#section "Recent Ads" do
#    table_for Ad.order("released_at desc").limit(5) do
#      column :name
#      column :released_at
#    end
#    strong { link_to "View All Products", admin_products_path }
#  end
#end
