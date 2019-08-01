class EventsController < ApplicationController
  before_action :check_for_login, :only => [:attend]
  before_action :check_for_admin, :only => [:new, :edit, :destroy]

  def index
    @events = Event.all.order(:start_date)
  end

  def new
    @event = Event.new
  end

  def create
    event = Event.create event_params
    if params[:file].present?
      # Then call Cloudinary's upload method, passing in the file in params
      req = Cloudinary::Uploader.upload(params[:file])
      # Using the public_id allows us to use Cloudinary's powerful image
      # transformation methods.
      event.image = req["public_id"]
      event.save
    end
    redirect_to event
  end

  def edit
    @event = Event.find params[:id]
  end

  def update
    event = Event.find params[:id]
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      event.image = req["public_id"]
    end
    event.update event_params
    event.save
    redirect_to event
  end

  def show
    @event = Event.find params[:id]
  end

  def destroy
    event = Event.find params[:id]
    event.destroy
    redirect_to events_path
  end

  def attend
    event = Event.find params[:id]
    attend = Attend.create(:user_id => @current_user.id, :event_id => event.id)
    attend.save
    redirect_to event
  end

  private
    def event_params
    # Strong parameters: whitelist of sanitised input -- stuff we are happy to let the user provide us.
    params.require(:event).permit(:title, :start_date, :end_date, :image, :address, :info, :location_id)
  end
end
