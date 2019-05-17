class HostelsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @hostels = policy_scope(Hostel)
  end

  def new
    authorize @hostel
    @hostel = Hostel.new
  end

  def create
    @hostel.user = current_user
    @hostel = Hostel.new(hostels_params)
    authorize @hostel
    @hostel = Hostel.save

    redirect_to hostel_path(@hostel)
  end

  def show
    @hostel = Hostel.find(params[:id])
    authorize @hostel
  end

  def edit
    authorize @hostel
    @hostel = Hostel.find(params[:id])
  end

  def update
    authorize @hostel
    if @hostel = Hostel.update(hostels_params)
      redirect_to hostels_path, notice: 'Hostel was succesfully updated'
    else
      render :edit
    end
  end

  def destroy
    @hostel = Hostel.find(params[:id])
    authorize @hostel
    if @hostel.destroy!
      redirect_to hostels_path, notice: 'Hostel was succesfully removed'
    else
      render :index
    end
  end

  private

  def hostel_params
    params.require(:hostel).permit(:name, :address, :city_name)
  end
end
