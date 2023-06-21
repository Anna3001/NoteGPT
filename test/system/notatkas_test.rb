require "application_system_test_case"

class NotatkasTest < ApplicationSystemTestCase
  setup do
    @notatka = notatkas(:one)
  end

  test "visiting the index" do
    visit notatkas_url
    assert_selector "h1", text: "Notatkas"
  end

  test "should create notatka" do
    visit notatkas_url
    click_on "New notatka"

    click_on "Create Notatka"

    assert_text "Notatka was successfully created"
    click_on "Back"
  end

  test "should update Notatka" do
    visit notatka_url(@notatka)
    click_on "Edit this notatka", match: :first

    click_on "Update Notatka"

    assert_text "Notatka was successfully updated"
    click_on "Back"
  end

  test "should destroy Notatka" do
    visit notatka_url(@notatka)
    click_on "Destroy this notatka", match: :first

    assert_text "Notatka was successfully destroyed"
  end
end
