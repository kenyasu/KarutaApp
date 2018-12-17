require 'test_helper'

class GradesTournamentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @grades_tournament = grades_tournaments(:one)
  end

  test "should get index" do
    get grades_tournaments_url
    assert_response :success
  end

  test "should get new" do
    get new_grades_tournament_url
    assert_response :success
  end

  test "should create grades_tournament" do
    assert_difference('GradesTournament.count') do
      post grades_tournaments_url, params: { grades_tournament: { grades_id: @grades_tournament.grades_id, tournament_id: @grades_tournament.tournament_id } }
    end

    assert_redirected_to grades_tournament_url(GradesTournament.last)
  end

  test "should show grades_tournament" do
    get grades_tournament_url(@grades_tournament)
    assert_response :success
  end

  test "should get edit" do
    get edit_grades_tournament_url(@grades_tournament)
    assert_response :success
  end

  test "should update grades_tournament" do
    patch grades_tournament_url(@grades_tournament), params: { grades_tournament: { grades_id: @grades_tournament.grades_id, tournament_id: @grades_tournament.tournament_id } }
    assert_redirected_to grades_tournament_url(@grades_tournament)
  end

  test "should destroy grades_tournament" do
    assert_difference('GradesTournament.count', -1) do
      delete grades_tournament_url(@grades_tournament)
    end

    assert_redirected_to grades_tournaments_url
  end
end
