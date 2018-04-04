require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get champions" do
    get welcome_champions_url
    assert_response :success
  end

  test "should get favorites" do
    get welcome_favorites_url
    assert_response :success
  end

  test "should get index" do
    get welcome_index_url
    assert_response :success
  end

end
