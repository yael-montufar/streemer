class PerformersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]

  def show
    @review = Review.new
    @performer = User.find(params[:id])
  end
end
