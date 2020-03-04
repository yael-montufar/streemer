class PerformersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]

  def show
    @performer = User.performer.find(params[:id])
    @review = Review.new
  end
end
