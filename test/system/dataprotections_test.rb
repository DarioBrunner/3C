require "application_system_test_case"

class DataprotectionsTest < ApplicationSystemTestCase
  setup do
    @dataprotection = dataprotections(:one)
  end

  test "visiting the index" do
    visit dataprotections_url
    assert_selector "h1", text: "Dataprotections"
  end

  test "creating a Dataprotection" do
    visit dataprotections_url
    click_on "New Dataprotection"

    fill_in "Content", with: @dataprotection.content
    click_on "Create Dataprotection"

    assert_text "Dataprotection was successfully created"
    click_on "Back"
  end

  test "updating a Dataprotection" do
    visit dataprotections_url
    click_on "Edit", match: :first

    fill_in "Content", with: @dataprotection.content
    click_on "Update Dataprotection"

    assert_text "Dataprotection was successfully updated"
    click_on "Back"
  end

  test "destroying a Dataprotection" do
    visit dataprotections_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dataprotection was successfully destroyed"
  end
end
