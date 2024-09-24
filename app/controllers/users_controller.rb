class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(permitted_attributes)
      redirect_to users_path
    else
      redirect_to users_path, error: 'Error while updating User'
    end
  end

  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      redirect_to users_path
    else
      redirect_to users_path, error: 'Error while deleting User'
    end
  end

  private

  def permitted_attributes
    params.require(:user).permit(:first_name, :last_name, :password, :password_confirmation).compact_blank!
  end
end
