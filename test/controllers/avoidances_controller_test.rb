require 'test_helper'

class AvoidancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @avoidance = avoidances(:one)
  end

  test "should get index" do
    get avoidances_url
    assert_response :success
  end

  test "should get new" do
    get new_avoidance_url
    assert_response :success
  end

  test "should create avoidance" do
    assert_difference('Avoidance.count') do
      post avoidances_url, params: { avoidance: { karuta_id: @avoidance.karuta_id, result_id: @avoidance.result_id } }
    end

    assert_redirected_to avoidance_url(Avoidance.last)
  end

  test "should show avoidance" do
    get avoidance_url(@avoidance)
    assert_response :success
  end

  test "should get edit" do
    get edit_avoidance_url(@avoidance)
    assert_response :success
  end

  test "should update avoidance" do
    patch avoidance_url(@avoidance), params: { avoidance: { karuta_id: @avoidance.karuta_id, result_id: @avoidance.result_id } }
    assert_redirected_to avoidance_url(@avoidance)
  end

  test "should destroy avoidance" do
    assert_difference('Avoidance.count', -1) do
      delete avoidance_url(@avoidance)
    end

    assert_redirected_to avoidances_url
  end
end
