class CommentsController < ApplicationController
  def create
    @story=Story.find(params[:story_id])
    @comment=@story.comments.create(params[:comment])
    redirect_to story_path(@story)
  end
end