require "application_system_test_case"

class AgeClassesTest < ApplicationSystemTestCase
  setup do
    @age_class = age_classes(:one)
  end

  test "visiting the index" do
    visit age_classes_url
    assert_selector "h1", text: "Age Classes"
  end

  test "creating a Age class" do
    visit age_classes_url
    click_on "New Age Class"

    fill_in "Name", with: @age_class.name
    click_on "Create Age class"

    assert_text "Age class was successfully created"
    click_on "Back"
  end

  test "updating a Age class" do
    visit age_classes_url
    click_on "Edit", match: :first

    fill_in "Name", with: @age_class.name
    click_on "Update Age class"

    assert_text "Age class was successfully updated"
    click_on "Back"
  end

  test "destroying a Age class" do
    visit age_classes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Age class was successfully destroyed"
  end
end
