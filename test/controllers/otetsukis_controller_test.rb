require 'test_helper'

class OtetsukisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @otetsuki = otetsukis(:one)
  end

  test "should get index" do
    get otetsukis_url
    assert_response :success
  end

  test "should get new" do
    get new_otetsuki_url
    assert_response :success
  end

  test "should create otetsuki" do
    assert_difference('Otetsuki.count') do
      post otetsukis_url, params: { otetsuki: { field_id: @otetsuki.field_id, karuta_id: @otetsuki.karuta_id, result_id: @otetsuki.result_id } }
    end

    assert_redirected_to otetsuki_url(Otetsuki.last)
  end

  test "should show otetsuki" do
    get otetsuki_url(@otetsuki)
    assert_response :success
  end

  test "should get edit" do
    get edit_otetsuki_url(@otetsuki)
    assert_response :success
  end

  test "should update otetsuki" do
    patch otetsuki_url(@otetsuki), params: { otetsuki: { field_id: @otetsuki.field_id, karuta_id: @otetsuki.karuta_id, result_id: @otetsuki.result_id } }
    assert_redirected_to otetsuki_url(@otetsuki)
  end

  test "should destroy otetsuki" do
    assert_difference('Otetsuki.count', -1) do
      delete otetsuki_url(@otetsuki)
    end

    assert_redirected_to otetsukis_url
  end
end
