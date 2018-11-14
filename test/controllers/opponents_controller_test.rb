require 'test_helper'

class OpponentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @opponent = opponents(:one)
  end

  test "should get index" do
    get opponents_url
    assert_response :success
  end

  test "should get new" do
    get new_opponent_url
    assert_response :success
  end

  test "should create opponent" do
    assert_difference('Opponent.count') do
      post opponents_url, params: { opponent: { belongs: @opponent.belongs, gender_id: @opponent.gender_id, grade_id: @opponent.grade_id, hand_id: @opponent.hand_id, integer: @opponent.integer, name: @opponent.name, style_id: @opponent.style_id, user_id: @opponent.user_id } }
    end

    assert_redirected_to opponent_url(Opponent.last)
  end

  test "should show opponent" do
    get opponent_url(@opponent)
    assert_response :success
  end

  test "should get edit" do
    get edit_opponent_url(@opponent)
    assert_response :success
  end

  test "should update opponent" do
    patch opponent_url(@opponent), params: { opponent: { belongs: @opponent.belongs, gender_id: @opponent.gender_id, grade_id: @opponent.grade_id, hand_id: @opponent.hand_id, integer: @opponent.integer, name: @opponent.name, style_id: @opponent.style_id, user_id: @opponent.user_id } }
    assert_redirected_to opponent_url(@opponent)
  end

  test "should destroy opponent" do
    assert_difference('Opponent.count', -1) do
      delete opponent_url(@opponent)
    end

    assert_redirected_to opponents_url
  end
end
