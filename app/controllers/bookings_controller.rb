class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @bookings = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.save
  end

  def show
    @bookings
  end

  def edit
    @bookings = Booking.find(params[:id])
  end

  def update

  end

  def destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :nights)
  end
end
