class LocationsController < ApplicationController
  def index
    @locations = Location.all.order(:name)
  end

  def new
    @location = Location.new
  end

  def create
    location = Location.create location_params
    redirect_to location
  end

  def edit
    @location = location.find params[:id]
  end

  def updated
    location = Location.find params[:id]
    location.update location_params
    redirect_to location
  end

  def show
    @location = Location.find params[:id]
  end

  def destroy
    location = Location.find params[:id]
    location.destroy
    redirect_to locations_path
  end

  private
  def location_params
    params.require(:location).permit(:name, :image, :event_id)
  end
end
