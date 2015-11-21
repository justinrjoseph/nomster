require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  
  test "user creates comment for place" do
    user = FactoryGirl.create(:user)
    sign_in user

    place = FactoryGirl.create(:place)

    assert_difference ['Comment.count', 'place.comments.count', 'user.comments.count'], 1 do
      post :create, place_id: place.id, comment: { 
                                          message: 'A test comment',
                                          rating: '5_stars' 
                                        }
    end

    assert_redirected_to place_path(place)
    assert_equal 1, place.comments.count
  end

end