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

    @current_events = @events.reject do |event|
      event.ends_at.past?
    end


    @markers = @current_events.map do |event|
      @now = Time.now
      @range = event.starts_at..event.ends_at

      if @range === @now
      {
        icon: "stream",
        lat: event.latitude,
        lng: event.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { event: event })
      }
      else
      {
        icon: "soon",
        lat: event.latitude,
        lng: event.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { event: event })
      }
      end
    end
  end
end
