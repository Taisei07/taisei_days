require "application_system_test_case"

class NappisTest < ApplicationSystemTestCase
  setup do
    @nappi = nappis(:one)
  end

  test "visiting the index" do
    visit nappis_url
    assert_selector "h1", text: "Nappis"
  end

  test "creating a Nappi" do
    visit nappis_url
    click_on "New Nappi"

    fill_in "Age", with: @nappi.age
    fill_in "Year", with: @nappi.year
    click_on "Create Nappi"

    assert_text "Nappi was successfully created"
    click_on "Back"
  end

  test "updating a Nappi" do
    visit nappis_url
    click_on "Edit", match: :first

    fill_in "Age", with: @nappi.age
    fill_in "Year", with: @nappi.year
    click_on "Update Nappi"

    assert_text "Nappi was successfully updated"
    click_on "Back"
  end

  test "destroying a Nappi" do
    visit nappis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Nappi was successfully destroyed"
  end
end
