class CommentsController < ApplicationController
  http_basic_authenticate_with :name => "foo", :password => "bar", :only => :destroy
  def create
    @story=Story.find(params[:story_id])
    @comment=@story.comments.create(params[:comment])
    redirect_to story_path(@story)
  end  
  def destroy
    @story = Story.find(params[:story_id])
    @comment = @story.comments.find(params[:id])
    @comment.destroy
    redirect_to story_path(@story)
  end
end
