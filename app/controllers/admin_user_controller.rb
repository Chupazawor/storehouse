class AdminUserController < ApplicationController
  def show
    @user = AdminUser.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(permitted_attributes)
      redirect_to users_path
    else
      redirect_to users_path, error: 'Error while updating User'
    end
  end

  private

  def permitted_attributes
    params.require(:admin_user).permit(:first_name, :last_name, :password, :password_confirmation).compact_blank!
  end
end
