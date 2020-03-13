class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :stream]


  def index
      @events = Event.geocoded
      @live_events = @events.reject do |event|
        event.ends_at.past?
      end
      @icons = []
      @live_events.each do |event|
        @now = Time.current
        @range = event.starts_at..event.ends_at
        if @range === @now
          @icons << "fa-play-circle"
        elsif event.ends_at.past?
          @icons << "X"
        else
          @icons << "fa-clock"
        end
      end
  end

  def show
    @event = Event.find(params[:id])
    @user = @event.performer_profile.user
  end

  def stream
    if params[:tip] == "success"
      flash[:popup_notice] = "Tip sent!"
    end

    @event = Event.find(params[:id])
    @comment = Comment.new
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




