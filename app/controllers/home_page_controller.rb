class HomePageController < ApplicationController
  def index
    @users_count = User.active.count
  end
end
