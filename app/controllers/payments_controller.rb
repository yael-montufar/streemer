class PaymentsController < ApplicationController

  def new
    @tip = current_user.tips.where(state: 'pending').find(params[:tip_id])
    @performer = @tip.performer_profile
  end
end
