class PerformersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]

  def show
    @review = Review.new
    @user = User.find(params[:id])
    @performer = PerformerProfile.find(params[:id])
    @reviews = @performer.reviews.last(5)
    # @reviews = @performer.reviews.first(5) Not working!!!
  end
end
