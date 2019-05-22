class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    # @hostel = Hostel.new
    # @hostels = Hostel.all
  end

  def show_user_dashboard
  end

  private

  def payment_method_params
    params.require(:payment_method).permit()
  end
end
