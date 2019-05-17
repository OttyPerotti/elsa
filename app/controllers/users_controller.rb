class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @hostel = Hostel.where(user: current_user)
    @latest_bookings = @hostel.first.bookings.order(created_at: :desc).limit(5)
  end

end
