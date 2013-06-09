require 'test_helper'

class StoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save story without title" do
    story = Story.new
    story.name="foo";
    story.content="meh";
    assert !story.save
  end
  test "should not save story with short title" do
    s = Story.new
    s.name="foo"
    s.content="meh"
    s.title="f"
    assert !s.save
  end
  test "should not save story without name" do
    s=Story.new
    s.title="foobar"
    s.content="mehhhh"
    assert !s.save
  end
    
end
