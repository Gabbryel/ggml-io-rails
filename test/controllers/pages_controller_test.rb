require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get pages_home_url
    assert_response :success
  end

  test "should get feed" do
    get pages_feed_url
    assert_response :success
  end

  test "should get slugs" do
    get pages_slugs_url
    assert_response :success
  end
end
