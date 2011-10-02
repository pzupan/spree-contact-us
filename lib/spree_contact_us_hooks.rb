class SpreeContactUsHooks < Spree::ThemeSupport::HookListener
  insert_after(:admin_tabs) do
    %[<%= tab(:inquiries) %>]
  end

  insert_after(:admin_configurations_sidebar_menu) do
    %[<li<%= ' class="active"' if controller.controller_name == 'inquiries' %>><%= link_to t("inquiries_settings"), admin_inquiries_settings_path %></li>]
  end 

  insert_after(:admin_configurations_menu) do
    %[
      <tr>
        <td><%= link_to t("inquiries_settings"), admin_inquiries_settings_path %></td>
        <td><%= t("inquiries_settings_description") %></td>
      </tr>
    ] 
  end

end
