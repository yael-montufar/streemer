class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]


  def index
    #Event.near - params, o con search
    unless params.has_key?("lat")
      @events = Event.geocoded
    # @events = Event.near([params[:lng].to_f, params[:lng].to_f], 5000)
    else
      @longitude = params[:lng].to_f
      @latitude = params[:lat].to_f
      @events = Event.near([@latitude, @longitude], 5)
    end
    
    @markers = @events.map do |event|
      {
        icon: ["stream", "soon"].sample,
        lat: event.latitude,
        lng: event.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { event: event })
      }
    end
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
      redirect_to performer_profile_path(current_user.performer_profile)
    else
      render :new
    end

  end

  private

  def event_params
    params.require(:event).permit(:name, :description,:location, :starts_at, :ends_at, :photo)
  end
end




