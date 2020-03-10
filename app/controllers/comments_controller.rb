class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    @comment.event = Event.find(params[:event_id])



    if @comment.save
      redirect_to stream_event_path(@comment.event)
    else
      render "events/stream"
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
