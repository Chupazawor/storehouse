class UserProfilesController < ApplicationController
  def show
    @user = User.find(params[:user_id])
    @user_profile = @user.user_profile
  end

  def create
    if UserProfile.create(**permitted_attributes, user_id: params[:user_id])
      redirect_to user_user_profile_path(params[:user_id])
    else
      redirect_to user_user_profile_path(params[:user_id]), error: 'Error while creating User Profile'
    end
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
