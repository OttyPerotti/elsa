class UsersController < ApplicationController
before_action :check_authorization
  def show
    @user = User.find(params[:id])
    @hostel = Hostel.where(user: current_user)
    @latest_bookings = @hostel.first.bookings.order(created_at: :desc).limit(5)
  end

  private

  private
  def check_authorization
    authorize :user
  end

end
