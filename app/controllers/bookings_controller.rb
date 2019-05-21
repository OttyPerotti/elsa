class BookingsController < ApplicationController
  def index
    @bookings = policy_scope(Booking).where(user: current_user)
  end

  def new
    @hostel = Hostel.find(params[:hostel_id])
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.hostel = Hostel.find(params[:hostel_id])
    authorize @booking
    if @booking.save
      redirect_to my_bookings_path, notice: "Booking successfully created"
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
    params.require(:booking).permit(:date, :nights, :guests)
  end
end
