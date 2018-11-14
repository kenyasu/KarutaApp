require 'test_helper'

class SchedulePracticesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @schedule_practice = schedule_practices(:one)
  end

  test "should get index" do
    get schedule_practices_url
    assert_response :success
  end

  test "should get new" do
    get new_schedule_practice_url
    assert_response :success
  end

  test "should create schedule_practice" do
    assert_difference('SchedulePractice.count') do
      post schedule_practices_url, params: { schedule_practice: { date: @schedule_practice.date, note: @schedule_practice.note, place: @schedule_practice.place, time: @schedule_practice.time, user_id: @schedule_practice.user_id } }
    end

    assert_redirected_to schedule_practice_url(SchedulePractice.last)
  end

  test "should show schedule_practice" do
    get schedule_practice_url(@schedule_practice)
    assert_response :success
  end

  test "should get edit" do
    get edit_schedule_practice_url(@schedule_practice)
    assert_response :success
  end

  test "should update schedule_practice" do
    patch schedule_practice_url(@schedule_practice), params: { schedule_practice: { date: @schedule_practice.date, note: @schedule_practice.note, place: @schedule_practice.place, time: @schedule_practice.time, user_id: @schedule_practice.user_id } }
    assert_redirected_to schedule_practice_url(@schedule_practice)
  end

  test "should destroy schedule_practice" do
    assert_difference('SchedulePractice.count', -1) do
      delete schedule_practice_url(@schedule_practice)
    end

    assert_redirected_to schedule_practices_url
  end
end
