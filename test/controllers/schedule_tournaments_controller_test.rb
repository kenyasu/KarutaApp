require 'test_helper'

class ScheduleTournamentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @schedule_tournament = schedule_tournaments(:one)
  end

  test "should get index" do
    get schedule_tournaments_url
    assert_response :success
  end

  test "should get new" do
    get new_schedule_tournament_url
    assert_response :success
  end

  test "should create schedule_tournament" do
    assert_difference('ScheduleTournament.count') do
      post schedule_tournaments_url, params: { schedule_tournament: { tournament_id: @schedule_tournament.tournament_id, user_id: @schedule_tournament.user_id } }
    end

    assert_redirected_to schedule_tournament_url(ScheduleTournament.last)
  end

  test "should show schedule_tournament" do
    get schedule_tournament_url(@schedule_tournament)
    assert_response :success
  end

  test "should get edit" do
    get edit_schedule_tournament_url(@schedule_tournament)
    assert_response :success
  end

  test "should update schedule_tournament" do
    patch schedule_tournament_url(@schedule_tournament), params: { schedule_tournament: { tournament_id: @schedule_tournament.tournament_id, user_id: @schedule_tournament.user_id } }
    assert_redirected_to schedule_tournament_url(@schedule_tournament)
  end

  test "should destroy schedule_tournament" do
    assert_difference('ScheduleTournament.count', -1) do
      delete schedule_tournament_url(@schedule_tournament)
    end

    assert_redirected_to schedule_tournaments_url
  end
end
