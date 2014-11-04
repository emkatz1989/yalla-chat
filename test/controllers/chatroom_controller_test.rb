require 'test_helper'

class ChatroomControllerTest < ActionController::TestCase
  test "should get onlineusers" do
    get :onlineusers
    assert_response :success
  end

  test "should get cpacity" do
    get :cpacity
    assert_response :success
  end

end
