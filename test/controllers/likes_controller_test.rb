require "test_helper"

class LikesControllerTest < ActionDispatch::IntegrationTest
  test "should get save_like" do
    get likes_save_like_url
    assert_response :success
  end
end
