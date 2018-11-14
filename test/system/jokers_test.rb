require "application_system_test_case"

class JokersTest < ApplicationSystemTestCase
  setup do
    @joker = jokers(:one)
  end

  test "visiting the index" do
    visit jokers_url
    assert_selector "h1", text: "Jokers"
  end

  test "creating a Joker" do
    visit jokers_url
    click_on "New Joker"

    fill_in "Karuta", with: @joker.karuta_id
    fill_in "Result", with: @joker.result_id
    click_on "Create Joker"

    assert_text "Joker was successfully created"
    click_on "Back"
  end

  test "updating a Joker" do
    visit jokers_url
    click_on "Edit", match: :first

    fill_in "Karuta", with: @joker.karuta_id
    fill_in "Result", with: @joker.result_id
    click_on "Update Joker"

    assert_text "Joker was successfully updated"
    click_on "Back"
  end

  test "destroying a Joker" do
    visit jokers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Joker was successfully destroyed"
  end
end
