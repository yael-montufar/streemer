class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]


  def index
    @events = Event.geocoded #returns flats with coordinates

    @markers = @events.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude
      }
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def stream
    @event = Event.find(params[:id])
  end

end


