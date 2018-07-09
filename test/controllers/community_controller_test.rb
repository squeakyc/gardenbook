require 'test_helper'

class CommunityControllerTest < ActionDispatch::IntegrationTest
  test "should get feed" do
    get community_feed_url
    assert_response :success
  end

  test "should get show_user" do
    get community_show_user_url
    assert_response :success
  end

  test "should get now_following" do
    get community_now_following_url
    assert_response :success
  end

  test "should get unfollow" do
    get community_unfollow_url
    assert_response :success
  end

end
