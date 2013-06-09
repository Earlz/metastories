require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end  
  setup do
    @comment = comments(:one)
    @story = stories(:one)
  end
  test "should create comment" do
    assert_difference('Comment.count') do
      post :create, comment: { body: @comment.body, commenter: @comment.commenter }, story_id: @story.id
    end

    assert_redirected_to story_path(assigns(:story))
  end
end
