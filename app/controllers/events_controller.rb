class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :stream]


  def index
      @events = Event.geocoded
      @icons = ["fa-play-circle", "fa-clock"]
  end

  def show
    @event = Event.find(params[:id])
    @user = @event.performer_profile.user
  end

  def stream
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new

  end

  def create
    @event = Event.new(event_params)
    @event.performer_profile = current_user.performer_profile
    if @event.save
      redirect_to performer_path(current_user)
    else
      render :new
    end

  end

  private

  def event_params
    params.require(:event).permit(:name, :description,:location, :starts_at, :ends_at, :photo)
  end
end




