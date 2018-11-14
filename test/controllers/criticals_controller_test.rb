require 'test_helper'

class CriticalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @critical = criticals(:one)
  end

  test "should get index" do
    get criticals_url
    assert_response :success
  end

  test "should get new" do
    get new_critical_url
    assert_response :success
  end

  test "should create critical" do
    assert_difference('Critical.count') do
      post criticals_url, params: { critical: { field_id: @critical.field_id, karuta_id: @critical.karuta_id, result_id: @critical.result_id } }
    end

    assert_redirected_to critical_url(Critical.last)
  end

  test "should show critical" do
    get critical_url(@critical)
    assert_response :success
  end

  test "should get edit" do
    get edit_critical_url(@critical)
    assert_response :success
  end

  test "should update critical" do
    patch critical_url(@critical), params: { critical: { field_id: @critical.field_id, karuta_id: @critical.karuta_id, result_id: @critical.result_id } }
    assert_redirected_to critical_url(@critical)
  end

  test "should destroy critical" do
    assert_difference('Critical.count', -1) do
      delete critical_url(@critical)
    end

    assert_redirected_to criticals_url
  end
end
