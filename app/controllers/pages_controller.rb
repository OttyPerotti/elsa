class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home


  def home
    # @hostel = Hostel.new
    # @hostels = Hostel.all
  end


end
