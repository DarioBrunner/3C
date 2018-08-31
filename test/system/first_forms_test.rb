require "application_system_test_case"

class FirstFormsTest < ApplicationSystemTestCase
  setup do
    @first_form = first_forms(:one)
  end

  test "visiting the index" do
    visit first_forms_url
    assert_selector "h1", text: "First Forms"
  end

  test "creating a First form" do
    visit first_forms_url
    click_on "New First Form"

    fill_in "Feld1", with: @first_form.feld1
    fill_in "Feld2", with: @first_form.feld2
    click_on "Create First form"

    assert_text "First form was successfully created"
    click_on "Back"
  end

  test "updating a First form" do
    visit first_forms_url
    click_on "Edit", match: :first

    fill_in "Feld1", with: @first_form.feld1
    fill_in "Feld2", with: @first_form.feld2
    click_on "Update First form"

    assert_text "First form was successfully updated"
    click_on "Back"
  end

  test "destroying a First form" do
    visit first_forms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "First form was successfully destroyed"
  end
end
