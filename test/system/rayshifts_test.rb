require "application_system_test_case"

class RayshiftsTest < ApplicationSystemTestCase
  setup do
    @rayshift = rayshifts(:one)
  end

  test "visiting the index" do
    visit rayshifts_url
    assert_selector "h1", text: "Rayshifts"
  end

  test "creating a Rayshift" do
    visit rayshifts_url
    click_on "New Rayshift"

    fill_in "Post", with: @rayshift.post
    click_on "Create Rayshift"

    assert_text "Rayshift was successfully created"
    click_on "Back"
  end

  test "updating a Rayshift" do
    visit rayshifts_url
    click_on "Edit", match: :first

    fill_in "Post", with: @rayshift.post
    click_on "Update Rayshift"

    assert_text "Rayshift was successfully updated"
    click_on "Back"
  end

  test "destroying a Rayshift" do
    visit rayshifts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rayshift was successfully destroyed"
  end
end
