class HostelsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @hostels = policy_scope(Hostel)
  end

  def new
    @hostel = Hostel.new
    authorize @hostel
  end

  def create
    @hostel.user = current_user
    @hostel = Hostel.new(hostels_params)
    authorize @hostel
    @hostel = Hostel.save

    redirect_to hostel_path(@hostel)
  end

  def show
    set_hostel
    authorize @hostel

    @hostel = Hostel.find(params[:id])
    # @bookings = @hostel.bookings
  end

  def edit
    authorize @hostel
    @hostel = Hostel.find(params[:id])
  end

  def update
    set_hostel
    authorize @hostel
    if @hostel = Hostel.update(hostels_params)
      redirect_to hostels_path, notice: 'Hostel was succesfully updated'
    else
      render :edit
    end
  end

  def destroy
    set_hostel
    authorize @hostel
    if @Hostel.destroy!
      redirect_to @hostels, notice: 'Hostel was succesfully removed'
    else
      render :index
    end
  end

  private

  def hostel_params
    params.require(:hostel).permit(:name, :address, :city_name)
  end

  def set_hostel
    @hostel = Hostel.find(params[:id])
  end
end
