require "application_system_test_case"

class GradesTournamentsTest < ApplicationSystemTestCase
  setup do
    @grades_tournament = grades_tournaments(:one)
  end

  test "visiting the index" do
    visit grades_tournaments_url
    assert_selector "h1", text: "Grades Tournaments"
  end

  test "creating a Grades tournament" do
    visit grades_tournaments_url
    click_on "New Grades Tournament"

    fill_in "Grades", with: @grades_tournament.grades_id
    fill_in "Tournament", with: @grades_tournament.tournament_id
    click_on "Create Grades tournament"

    assert_text "Grades tournament was successfully created"
    click_on "Back"
  end

  test "updating a Grades tournament" do
    visit grades_tournaments_url
    click_on "Edit", match: :first

    fill_in "Grades", with: @grades_tournament.grades_id
    fill_in "Tournament", with: @grades_tournament.tournament_id
    click_on "Update Grades tournament"

    assert_text "Grades tournament was successfully updated"
    click_on "Back"
  end

  test "destroying a Grades tournament" do
    visit grades_tournaments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Grades tournament was successfully destroyed"
  end
end
