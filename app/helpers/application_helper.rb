module ApplicationHelper
  def login_helper
    if current_user.is_a?(User)
      link_to "Logout From Your Account", destroy_user_session_path, method: :delete
    else
      (link_to "Register For An Account", new_user_registration_path) +
      "<br>".html_safe +
      (link_to "Login To Your Account", new_user_session_path)
    end
  end
end