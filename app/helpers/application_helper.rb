module ApplicationHelper
  def admin_user?
    current_user.is_a?(AdminUser)
  end

  def full_name(first_name, last_name)
    "#{first_name} #{last_name}"
  end
end
