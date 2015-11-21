require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  
  test "user can browser to dashboard" do
    user = FactoryGirl.create(:user)
    sign_in user

    get :show, id: user

    assert_response :success
  end

end
