require "application_system_test_case"

class FeedingsTest < ApplicationSystemTestCase
  setup do
    @feeding = feedings(:one)
  end

  test "visiting the index" do
    visit feedings_url
    assert_selector "h1", text: "Feedings"
  end

  test "creating a Feeding" do
    visit feedings_url
    click_on "New Feeding"

    fill_in "Baby", with: @feeding.baby
    fill_in "Cant", with: @feeding.cant
    fill_in "Time", with: @feeding.time
    click_on "Create Feeding"

    assert_text "Feeding was successfully created"
    click_on "Back"
  end

  test "updating a Feeding" do
    visit feedings_url
    click_on "Edit", match: :first

    fill_in "Baby", with: @feeding.baby
    fill_in "Cant", with: @feeding.cant
    fill_in "Time", with: @feeding.time
    click_on "Update Feeding"

    assert_text "Feeding was successfully updated"
    click_on "Back"
  end

  test "destroying a Feeding" do
    visit feedings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Feeding was successfully destroyed"
  end
end
