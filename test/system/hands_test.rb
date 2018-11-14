require "application_system_test_case"

class HandsTest < ApplicationSystemTestCase
  setup do
    @hand = hands(:one)
  end

  test "visiting the index" do
    visit hands_url
    assert_selector "h1", text: "Hands"
  end

  test "creating a Hand" do
    visit hands_url
    click_on "New Hand"

    fill_in "Name", with: @hand.name
    click_on "Create Hand"

    assert_text "Hand was successfully created"
    click_on "Back"
  end

  test "updating a Hand" do
    visit hands_url
    click_on "Edit", match: :first

    fill_in "Name", with: @hand.name
    click_on "Update Hand"

    assert_text "Hand was successfully updated"
    click_on "Back"
  end

  test "destroying a Hand" do
    visit hands_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hand was successfully destroyed"
  end
end
