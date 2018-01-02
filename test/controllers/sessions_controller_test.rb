require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  test "should get signup" do
    get :signup
    assert_response :success
  end

  test "should get user_signup" do
    get :user_signup
    assert_response :success
  end

  test "should get signin" do
    get :signin
    assert_response :success
  end

end
