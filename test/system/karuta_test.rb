require "application_system_test_case"

class KarutaTest < ApplicationSystemTestCase
  setup do
    @karutum = karuta(:one)
  end

  test "visiting the index" do
    visit karuta_url
    assert_selector "h1", text: "Karuta"
  end

  test "creating a Karutum" do
    visit karuta_url
    click_on "New Karutum"

    fill_in "Waka", with: @karutum.waka
    click_on "Create Karutum"

    assert_text "Karutum was successfully created"
    click_on "Back"
  end

  test "updating a Karutum" do
    visit karuta_url
    click_on "Edit", match: :first

    fill_in "Waka", with: @karutum.waka
    click_on "Update Karutum"

    assert_text "Karutum was successfully updated"
    click_on "Back"
  end

  test "destroying a Karutum" do
    visit karuta_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Karutum was successfully destroyed"
  end
end
