class HostelsController < ApplicationController
  def index
    @hostels = Hostel.all
  end

  def new
    @hostel = Hostel.new
  end

  def create
    @hostel = Hostel.new(hostels_params)
    @hostel = Hostel.save

    redirect_to hostel_path(@hostel)
  end

  def show
    @hostel = Hostel.find(params[:id])
  end

  def edit
    @hostel = Hostel.find(params[:id])
  end

  def update
    if @hostel = Hostel.update(hostels_params)
      redirect_to @hostels, notice: 'Hostel was succesfully updated'
    else
      render :edit
    end
  end

  def delete
    if @hostel = Hostel.destroy
      redirect_to_to @hostels, notice: 'Hostel was succesfully removed'
    end
  end

  private

  def hostel_params
    params.require(:hostel).permit( :name, :address, :city_name )
  end
end
