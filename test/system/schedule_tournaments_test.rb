require "application_system_test_case"

class ScheduleTournamentsTest < ApplicationSystemTestCase
  setup do
    @schedule_tournament = schedule_tournaments(:one)
  end

  test "visiting the index" do
    visit schedule_tournaments_url
    assert_selector "h1", text: "Schedule Tournaments"
  end

  test "creating a Schedule tournament" do
    visit schedule_tournaments_url
    click_on "New Schedule Tournament"

    fill_in "Tournament", with: @schedule_tournament.tournament_id
    fill_in "User", with: @schedule_tournament.user_id
    click_on "Create Schedule tournament"

    assert_text "Schedule tournament was successfully created"
    click_on "Back"
  end

  test "updating a Schedule tournament" do
    visit schedule_tournaments_url
    click_on "Edit", match: :first

    fill_in "Tournament", with: @schedule_tournament.tournament_id
    fill_in "User", with: @schedule_tournament.user_id
    click_on "Update Schedule tournament"

    assert_text "Schedule tournament was successfully updated"
    click_on "Back"
  end

  test "destroying a Schedule tournament" do
    visit schedule_tournaments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Schedule tournament was successfully destroyed"
  end
end
