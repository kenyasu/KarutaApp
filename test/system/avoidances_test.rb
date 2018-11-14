require "application_system_test_case"

class AvoidancesTest < ApplicationSystemTestCase
  setup do
    @avoidance = avoidances(:one)
  end

  test "visiting the index" do
    visit avoidances_url
    assert_selector "h1", text: "Avoidances"
  end

  test "creating a Avoidance" do
    visit avoidances_url
    click_on "New Avoidance"

    fill_in "Karuta", with: @avoidance.karuta_id
    fill_in "Result", with: @avoidance.result_id
    click_on "Create Avoidance"

    assert_text "Avoidance was successfully created"
    click_on "Back"
  end

  test "updating a Avoidance" do
    visit avoidances_url
    click_on "Edit", match: :first

    fill_in "Karuta", with: @avoidance.karuta_id
    fill_in "Result", with: @avoidance.result_id
    click_on "Update Avoidance"

    assert_text "Avoidance was successfully updated"
    click_on "Back"
  end

  test "destroying a Avoidance" do
    visit avoidances_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Avoidance was successfully destroyed"
  end
end
