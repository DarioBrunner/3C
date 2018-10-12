require "application_system_test_case"

class ImpressumsTest < ApplicationSystemTestCase
  setup do
    @impressum = impressums(:one)
  end

  test "visiting the index" do
    visit impressums_url
    assert_selector "h1", text: "Impressums"
  end

  test "creating a Impressum" do
    visit impressums_url
    click_on "New Impressum"

    fill_in "Context", with: @impressum.context
    click_on "Create Impressum"

    assert_text "Impressum was successfully created"
    click_on "Back"
  end

  test "updating a Impressum" do
    visit impressums_url
    click_on "Edit", match: :first

    fill_in "Context", with: @impressum.context
    click_on "Update Impressum"

    assert_text "Impressum was successfully updated"
    click_on "Back"
  end

  test "destroying a Impressum" do
    visit impressums_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Impressum was successfully destroyed"
  end
end
