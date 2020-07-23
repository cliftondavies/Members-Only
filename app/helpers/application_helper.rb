module ApplicationHelper
  def top_links
    if user_signed_in?
      (link_to "Welcome,  #{current_user.name}", root_path) +
        (link_to 'Sign Out', destroy_user_session_path, method: :delete)
    else
      (link_to 'Sign In', new_user_session_path) +
        (link_to 'Sign Up', new_user_registration_path)
    end
  end
end
