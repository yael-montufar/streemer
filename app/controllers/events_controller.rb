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
    @markers = @events.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude
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

end


