module ApplicationHelper
  def login_helper
    if current_user.is_a?(GuestUser)
      (link_to "Register For An Account", new_user_registration_path) +
      "<br>".html_safe +
      (link_to "Login To Your Account", new_user_session_path)
    else
      link_to "Logout From Your Account", destroy_user_session_path, method: :delete
    end
  end
  
  def source_helper(layout_name)
    if session[:source]
      greeting = "Thanks for visiting me from #{session[:source]}! Also, you are on the #{layout_name} layout."
      content_tag(:p, greeting, class: "source-greeting")
    end
  end
  
  def copyright_generator
    BadgerMushroomSnakeViewTool::Renderer.copyright 'Code To Success', 'All rights reserved'
  end
end