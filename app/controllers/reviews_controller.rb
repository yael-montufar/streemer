class ReviewsController < ApplicationController
  def create
    @performer = User.find(params[:performer_id])
    @review = Review.new(review_params)
    @review.performer_profile = PerformerProfile.find(params[:performer_id])
    if @review.save
      redirect_to performer_path(@performer)
    else
      render "performers/show"
    end
  end

  private
  def review_params
    params.require(:review).permit(:content)
  end
end
