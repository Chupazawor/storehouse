class UserProfilesController < ApplicationController
  def show
    @user = User.find(current_user.id)
    @user_profile = @user.user_profile
  end

  def create
    if UserProfile.create(**permitted_attributes, user_id: current_user.id)
      redirect_to user_user_profile_path(current_user.id)
    else
      redirect_to user_user_profile_path(current_user.id), error: 'Error while creating User Profile'
    end
  end

  def update
    @user_profile = User.find(current_user.id).user_profile
    if @user_profile.update(permitted_attributes)
      redirect_to users_path
    else
      redirect_to users_path, error: 'Error while updating User Profile'
    end
  end

  def destroy
    @user_profile = User.find(current_user.id).user_profile
    if @user_profile.destroy
      redirect_to user_user_profile_path(current_user.id)
    else
      redirect_to user_user_profile_path(current_user.id), error: 'Error while deleting User Profile'
    end
  end

  private

  def permitted_attributes
    params.require(:user_profile).permit(:address, :phone_number)
  end
end
