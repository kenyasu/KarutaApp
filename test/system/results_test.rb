require "application_system_test_case"

class ResultsTest < ApplicationSystemTestCase
  setup do
    @result = results(:one)
  end

  test "visiting the index" do
    visit results_url
    assert_selector "h1", text: "Results"
  end

  test "creating a Result" do
    visit results_url
    click_on "New Result"

    fill_in "Avoidance", with: @result.avoidance_id
    fill_in "Carddifference", with: @result.cardDifference
    fill_in "Comment", with: @result.comment
    fill_in "Critical", with: @result.critical_id
    fill_in "Date", with: @result.date
    fill_in "Discussionopp", with: @result.discussionOpp
    fill_in "Discussionself", with: @result.discussionSelf
    fill_in "Gamecount", with: @result.gameCount_id
    fill_in "Gametype", with: @result.gameType_id
    fill_in "Joker", with: @result.joker_id
    fill_in "Opponent", with: @result.opponent_id
    fill_in "Otetsuki", with: @result.otetsuki_id
    fill_in "User", with: @result.user_id
    click_on "Create Result"

    assert_text "Result was successfully created"
    click_on "Back"
  end

  test "updating a Result" do
    visit results_url
    click_on "Edit", match: :first

    fill_in "Avoidance", with: @result.avoidance_id
    fill_in "Carddifference", with: @result.cardDifference
    fill_in "Comment", with: @result.comment
    fill_in "Critical", with: @result.critical_id
    fill_in "Date", with: @result.date
    fill_in "Discussionopp", with: @result.discussionOpp
    fill_in "Discussionself", with: @result.discussionSelf
    fill_in "Gamecount", with: @result.gameCount_id
    fill_in "Gametype", with: @result.gameType_id
    fill_in "Joker", with: @result.joker_id
    fill_in "Opponent", with: @result.opponent_id
    fill_in "Otetsuki", with: @result.otetsuki_id
    fill_in "User", with: @result.user_id
    click_on "Update Result"

    assert_text "Result was successfully updated"
    click_on "Back"
  end

  test "destroying a Result" do
    visit results_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Result was successfully destroyed"
  end
end
