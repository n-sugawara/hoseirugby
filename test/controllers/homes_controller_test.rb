require 'test_helper'

class HomesControllerTest < ActionController::TestCase
  test "should get top" do
    get :top
    assert_response :success
  end

  test "should get link" do
    get :link
    assert_response :success
  end

  test "should get history" do
    get :history
    assert_response :success
  end

end
