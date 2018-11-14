require "application_system_test_case"

class CriticalsTest < ApplicationSystemTestCase
  setup do
    @critical = criticals(:one)
  end

  test "visiting the index" do
    visit criticals_url
    assert_selector "h1", text: "Criticals"
  end

  test "creating a Critical" do
    visit criticals_url
    click_on "New Critical"

    fill_in "Field", with: @critical.field_id
    fill_in "Karuta", with: @critical.karuta_id
    fill_in "Result", with: @critical.result_id
    click_on "Create Critical"

    assert_text "Critical was successfully created"
    click_on "Back"
  end

  test "updating a Critical" do
    visit criticals_url
    click_on "Edit", match: :first

    fill_in "Field", with: @critical.field_id
    fill_in "Karuta", with: @critical.karuta_id
    fill_in "Result", with: @critical.result_id
    click_on "Update Critical"

    assert_text "Critical was successfully updated"
    click_on "Back"
  end

  test "destroying a Critical" do
    visit criticals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Critical was successfully destroyed"
  end
end
