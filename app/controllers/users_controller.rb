class UsersController < ApplicationController
  before_action :check_authorization

  def show
    @user = User.find(params[:id])
    hostels = Hostel.where(user: current_user)
    @earnings = calculate_total_earnings(hostels)
    # @latest_bookings = booking_details_latest
    @latest_bookings = hostels.first.bookings.order(created_at: :desc).limit(10)
  end

  def my_bookings
    @bookings = Booking.where(user: current_user)
  end

  private

  def check_authorization
    authorize :user
  end

  def calculate_total_earnings(hostels)
    # binding.pry
    arr_earnings_for_each_hostel = []
    hostels.each do |hostel|
      sum = 0
      if hostel.bookings
        hostel.bookings.each do |booking|
          sum += booking.price
          # raise
        end
      end
      arr_earnings_for_each_hostel << sum
    end
    return arr_earnings_for_each_hostel.reduce(0) { |sum, num| sum + num }
  end


end
