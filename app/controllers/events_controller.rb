class EventsController < ApplicationController
  before_action :check_for_login, :only => [:attend]
  before_action :check_for_admin, :only => [:edit, :destroy]

  def index
    @events = Event.all.order(:start_date)
  end

  def new
    @event = Event.new
  end

  def create
    event = Event.create event_params
    redirect_to event
  end

  def edit
    @event = Event.find params[:id]
  end

  def update
    event = Event.find params[:id]
    event.update event_params
    redirect_to event
  end

  def show
    @event = Event.find params[:id]
  end

  def destroy
    event = Event.find params[:id]
    event.destroy
    redirect_to event_path
  end

  def attend
    event = Event.find params[:id]
    attend = Attend.create(:user_id => @current_user.id, :event_id => event.id)
    redirect_to event # TODO: redirect_to user_events
  end

  private
    def event_params
    # Strong parameters: whitelist of sanitised input -- stuff we are happy to let the user provide us.
    params.require(:event).permit(:title, :start_date, :end_date, :image, :address, :info, :location_id)
  end
end
