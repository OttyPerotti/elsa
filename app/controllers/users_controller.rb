class UsersController < ApplicationController
before_action :check_authorization
  def show
    @user = User.find(params[:id])
    hostels = Hostel.where(user: current_user)
    @earnings = calculate_total_earnings(hostels)
    # @latest_bookings = @hostel.first.bookings.order(created_at: :desc).limit(5)
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

  def booking_details_latest
    bookings.map do |booking|
      if booking.price
        booking.map do |b|
          return b[1], b[2], b[3], b[6]
        end
      end
    end
  end
end
