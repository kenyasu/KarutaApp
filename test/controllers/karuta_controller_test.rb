require 'test_helper'

class KarutaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @karutum = karuta(:one)
  end

  test "should get index" do
    get karuta_url
    assert_response :success
  end

  test "should get new" do
    get new_karutum_url
    assert_response :success
  end

  test "should create karutum" do
    assert_difference('Karutum.count') do
      post karuta_url, params: { karutum: { waka: @karutum.waka } }
    end

    assert_redirected_to karutum_url(Karutum.last)
  end

  test "should show karutum" do
    get karutum_url(@karutum)
    assert_response :success
  end

  test "should get edit" do
    get edit_karutum_url(@karutum)
    assert_response :success
  end

  test "should update karutum" do
    patch karutum_url(@karutum), params: { karutum: { waka: @karutum.waka } }
    assert_redirected_to karutum_url(@karutum)
  end

  test "should destroy karutum" do
    assert_difference('Karutum.count', -1) do
      delete karutum_url(@karutum)
    end

    assert_redirected_to karuta_url
  end
end
