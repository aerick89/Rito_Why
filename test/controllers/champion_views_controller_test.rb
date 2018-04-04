require 'test_helper'

class ChampionViewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @champion_view = champion_views(:one)
  end

  test "should get index" do
    get champion_views_url
    assert_response :success
  end

  test "should get new" do
    get new_champion_view_url
    assert_response :success
  end

  test "should create champion_view" do
    assert_difference('ChampionView.count') do
      post champion_views_url, params: { champion_view: { slide: @champion_view.slide } }
    end

    assert_redirected_to champion_view_url(ChampionView.last)
  end

  test "should show champion_view" do
    get champion_view_url(@champion_view)
    assert_response :success
  end

  test "should get edit" do
    get edit_champion_view_url(@champion_view)
    assert_response :success
  end

  test "should update champion_view" do
    patch champion_view_url(@champion_view), params: { champion_view: { slide: @champion_view.slide } }
    assert_redirected_to champion_view_url(@champion_view)
  end

  test "should destroy champion_view" do
    assert_difference('ChampionView.count', -1) do
      delete champion_view_url(@champion_view)
    end

    assert_redirected_to champion_views_url
  end
end
