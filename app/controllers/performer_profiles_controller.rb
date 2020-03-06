class PerformerProfilesController < ApplicationController
    def new
    if current_user.performer?
      flash[:notice] = "You already are a performer!"
      redirect_to performer_path(current_user)
    end
    @performer_profile = PerformerProfile.new
  end

  def create
    @performer_profile = PerformerProfile.new(performer_profile_params)
    @performer_profile.user = current_user
    if @performer_profile.save
      redirect_to performer_path(current_user)
    else
      render :new
    end
  end

  def show
    @perfomer_profile = PerformerProfile.find(params[:id])
    @events = current_user.performer_profile.events
  end

  private

  def performer_profile_params
    params.require(:performer_profile).permit(:stage_name, :bio)
  end
end
