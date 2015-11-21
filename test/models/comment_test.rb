require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  
  test "humanized rating" do
    comment = FactoryGirl.create(:comment)
    assert_equal comment.humanized_rating, 'five stars'
  end

end
