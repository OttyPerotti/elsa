class BookingsController < ApplicationController
  def index
    @bookings = policy_scope(Booking).where(user: current_user)
  end

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    authorize @booking
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def edit
    @booking = Booking.find(params[:id])
    @booking.user = current_user
    @booking.save

    redirect_to bookings_path
  end

  def update
    authorize @booking
    if @booking.update(booking_params)
      redirect_to booking_path(@booking), notice: "Booking successfully updated"
    else
      render :edit
    end
  end

  def destroy
    authorize @booking
    @booking = Booking.find(params[:id])
    if @booking.destroy
      redirect_to bookings_path, notice: 'Hostel was succesfully removed'
    else
      render :index
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :nights)
  end
end
