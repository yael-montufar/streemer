class PaymentsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new]

  def new
    @tip = Tip.where(state: 'pending').find(params[:tip_id])
    @performer = @tip.performer_profile
  end
end
