class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @hostels = Hostel.where(user: current_user)
  end
end
