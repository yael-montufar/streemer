class MapsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]

def show
    #Event.near - params, o con search
    unless params.has_key?("lat")
      @events = Event.geocoded
    # @events = Event.near([params[:lng].to_f, params[:lng].to_f], 5000)
    else
      @longitude = params[:lng].to_f
      @latitude = params[:lat].to_f
      @events = Event.geocoded#near([@latitude, @longitude], 5)
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
end
