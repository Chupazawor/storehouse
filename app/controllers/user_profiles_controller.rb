class UserProfilesController < ApplicationController
  def show
    @user = User.find(params[:user_id])
    @user_profile = @user.user_profile
  end

  def update
    @user_profile = User.find(params[:user_id]).user_profile
    if @user_profile.update(permitted_attributes)
      redirect_to users_path
    else
      redirect_to users_path, error: 'Error while updating User Profile'
    end
  end

  private

  def permitted_attributes
    params.require(:user_profile).permit(:address, :phone_number)
  end
end
