require 'test_helper'

class GameCountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @game_count = game_counts(:one)
  end

  test "should get index" do
    get game_counts_url
    assert_response :success
  end

  test "should get new" do
    get new_game_count_url
    assert_response :success
  end

  test "should create game_count" do
    assert_difference('GameCount.count') do
      post game_counts_url, params: { game_count: { name: @game_count.name } }
    end

    assert_redirected_to game_count_url(GameCount.last)
  end

  test "should show game_count" do
    get game_count_url(@game_count)
    assert_response :success
  end

  test "should get edit" do
    get edit_game_count_url(@game_count)
    assert_response :success
  end

  test "should update game_count" do
    patch game_count_url(@game_count), params: { game_count: { name: @game_count.name } }
    assert_redirected_to game_count_url(@game_count)
  end

  test "should destroy game_count" do
    assert_difference('GameCount.count', -1) do
      delete game_count_url(@game_count)
    end

    assert_redirected_to game_counts_url
  end
end
