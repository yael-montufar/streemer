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
end


