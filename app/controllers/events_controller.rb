class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]


  def index
    @events = Event.geocoded

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
  end

  def stream
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new

  end

  def create
    @event = Event.new(event_params)

  end
end


