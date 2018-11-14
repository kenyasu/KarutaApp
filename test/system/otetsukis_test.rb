require "application_system_test_case"

class OtetsukisTest < ApplicationSystemTestCase
  setup do
    @otetsuki = otetsukis(:one)
  end

  test "visiting the index" do
    visit otetsukis_url
    assert_selector "h1", text: "Otetsukis"
  end

  test "creating a Otetsuki" do
    visit otetsukis_url
    click_on "New Otetsuki"

    fill_in "Field", with: @otetsuki.field_id
    fill_in "Karuta", with: @otetsuki.karuta_id
    fill_in "Result", with: @otetsuki.result_id
    click_on "Create Otetsuki"

    assert_text "Otetsuki was successfully created"
    click_on "Back"
  end

  test "updating a Otetsuki" do
    visit otetsukis_url
    click_on "Edit", match: :first

    fill_in "Field", with: @otetsuki.field_id
    fill_in "Karuta", with: @otetsuki.karuta_id
    fill_in "Result", with: @otetsuki.result_id
    click_on "Update Otetsuki"

    assert_text "Otetsuki was successfully updated"
    click_on "Back"
  end

  test "destroying a Otetsuki" do
    visit otetsukis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Otetsuki was successfully destroyed"
  end
end
