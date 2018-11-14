require "application_system_test_case"

class SchedulePracticesTest < ApplicationSystemTestCase
  setup do
    @schedule_practice = schedule_practices(:one)
  end

  test "visiting the index" do
    visit schedule_practices_url
    assert_selector "h1", text: "Schedule Practices"
  end

  test "creating a Schedule practice" do
    visit schedule_practices_url
    click_on "New Schedule Practice"

    fill_in "Date", with: @schedule_practice.date
    fill_in "Note", with: @schedule_practice.note
    fill_in "Place", with: @schedule_practice.place
    fill_in "Time", with: @schedule_practice.time
    fill_in "User", with: @schedule_practice.user_id
    click_on "Create Schedule practice"

    assert_text "Schedule practice was successfully created"
    click_on "Back"
  end

  test "updating a Schedule practice" do
    visit schedule_practices_url
    click_on "Edit", match: :first

    fill_in "Date", with: @schedule_practice.date
    fill_in "Note", with: @schedule_practice.note
    fill_in "Place", with: @schedule_practice.place
    fill_in "Time", with: @schedule_practice.time
    fill_in "User", with: @schedule_practice.user_id
    click_on "Update Schedule practice"

    assert_text "Schedule practice was successfully updated"
    click_on "Back"
  end

  test "destroying a Schedule practice" do
    visit schedule_practices_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Schedule practice was successfully destroyed"
  end
end
