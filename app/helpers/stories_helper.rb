module StoriesHelper
  def join_tags(story)
    story.tags.map { |t| t.name }.join(", ")
  end
end
