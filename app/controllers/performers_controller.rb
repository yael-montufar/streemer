class PerformersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]

  def show
    @performer = User.find(params[:id])
    @is_mine = current_user == @performer
    @review = Review.new
  end
end
