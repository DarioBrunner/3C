require "application_system_test_case"

class CopyrigthsTest < ApplicationSystemTestCase
  setup do
    @copyrigth = copyrigths(:one)
  end

  test "visiting the index" do
    visit copyrigths_url
    assert_selector "h1", text: "Copyrigths"
  end

  test "creating a Copyrigth" do
    visit copyrigths_url
    click_on "New Copyrigth"

    fill_in "Copy", with: @copyrigth.copy
    click_on "Create Copyrigth"

    assert_text "Copyrigth was successfully created"
    click_on "Back"
  end

  test "updating a Copyrigth" do
    visit copyrigths_url
    click_on "Edit", match: :first

    fill_in "Copy", with: @copyrigth.copy
    click_on "Update Copyrigth"

    assert_text "Copyrigth was successfully updated"
    click_on "Back"
  end

  test "destroying a Copyrigth" do
    visit copyrigths_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Copyrigth was successfully destroyed"
  end
end
