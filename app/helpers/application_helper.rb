module ApplicationHelper

  def is_Admin?
    user_signed_in? && current_user.role == "admin"
  end
end
