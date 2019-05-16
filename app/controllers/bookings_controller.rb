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
    @bookings = Booking.find(params[:id])
  end

  def edit
    @bookings = Booking.find(params[:id])
  end

  def update
    if @booking = Booking.update(booking_params)
      redirect_to @booking, notice: "Booking successfully updated"
    else
      render :edit
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :nights)
  end
end
