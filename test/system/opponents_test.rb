require "application_system_test_case"

class OpponentsTest < ApplicationSystemTestCase
  setup do
    @opponent = opponents(:one)
  end

  test "visiting the index" do
    visit opponents_url
    assert_selector "h1", text: "Opponents"
  end

  test "creating a Opponent" do
    visit opponents_url
    click_on "New Opponent"

    fill_in "Belongs", with: @opponent.belongs
    fill_in "Gender", with: @opponent.gender_id
    fill_in "Grade", with: @opponent.grade_id
    fill_in "Hand", with: @opponent.hand_id
    fill_in "Integer", with: @opponent.integer
    fill_in "Name", with: @opponent.name
    fill_in "Style", with: @opponent.style_id
    fill_in "User", with: @opponent.user_id
    click_on "Create Opponent"

    assert_text "Opponent was successfully created"
    click_on "Back"
  end

  test "updating a Opponent" do
    visit opponents_url
    click_on "Edit", match: :first

    fill_in "Belongs", with: @opponent.belongs
    fill_in "Gender", with: @opponent.gender_id
    fill_in "Grade", with: @opponent.grade_id
    fill_in "Hand", with: @opponent.hand_id
    fill_in "Integer", with: @opponent.integer
    fill_in "Name", with: @opponent.name
    fill_in "Style", with: @opponent.style_id
    fill_in "User", with: @opponent.user_id
    click_on "Update Opponent"

    assert_text "Opponent was successfully updated"
    click_on "Back"
  end

  test "destroying a Opponent" do
    visit opponents_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Opponent was successfully destroyed"
  end
end
