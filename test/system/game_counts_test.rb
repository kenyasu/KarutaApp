require "application_system_test_case"

class GameCountsTest < ApplicationSystemTestCase
  setup do
    @game_count = game_counts(:one)
  end

  test "visiting the index" do
    visit game_counts_url
    assert_selector "h1", text: "Game Counts"
  end

  test "creating a Game count" do
    visit game_counts_url
    click_on "New Game Count"

    fill_in "Name", with: @game_count.name
    click_on "Create Game count"

    assert_text "Game count was successfully created"
    click_on "Back"
  end

  test "updating a Game count" do
    visit game_counts_url
    click_on "Edit", match: :first

    fill_in "Name", with: @game_count.name
    click_on "Update Game count"

    assert_text "Game count was successfully updated"
    click_on "Back"
  end

  test "destroying a Game count" do
    visit game_counts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Game count was successfully destroyed"
  end
end
