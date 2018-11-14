require 'test_helper'

class AgeClassesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @age_class = age_classes(:one)
  end

  test "should get index" do
    get age_classes_url
    assert_response :success
  end

  test "should get new" do
    get new_age_class_url
    assert_response :success
  end

  test "should create age_class" do
    assert_difference('AgeClass.count') do
      post age_classes_url, params: { age_class: { name: @age_class.name } }
    end

    assert_redirected_to age_class_url(AgeClass.last)
  end

  test "should show age_class" do
    get age_class_url(@age_class)
    assert_response :success
  end

  test "should get edit" do
    get edit_age_class_url(@age_class)
    assert_response :success
  end

  test "should update age_class" do
    patch age_class_url(@age_class), params: { age_class: { name: @age_class.name } }
    assert_redirected_to age_class_url(@age_class)
  end

  test "should destroy age_class" do
    assert_difference('AgeClass.count', -1) do
      delete age_class_url(@age_class)
    end

    assert_redirected_to age_classes_url
  end
end
