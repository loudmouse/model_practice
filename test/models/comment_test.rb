require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  def setup
    @comment = Comment.new(body: "example comment")
  end

  test "should be valid" do
    assert @comment.valid?
  end

  test "name should be present" do
    @comment.body= "  "
    assert_not @comment.valid?
  end
end
