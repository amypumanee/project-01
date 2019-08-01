class LocationsController < ApplicationController
  before_action :check_for_admin, :only => [:new, :edit, :destroy]

  def index
    @locations = Location.all.order(:name)
  end

  def new
    @location = Location.new
  end

  def create
    location = Location.create location_params
    if params[:file].present?
      # Then call Cloudinary's upload method, passing in the file in params
      req = Cloudinary::Uploader.upload(params[:file])
      # Using the public_id allows us to use Cloudinary's powerful image
      # transformation methods.
      location.image = req["public_id"]
      location.save
    end
    redirect_to location
  end

  def edit
    @location = location.find params[:id]
  end

  def updated
    location = Location.find params[:id]
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      location.image = req["public_id"]
    end
    location.update location_params
    location.save
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
