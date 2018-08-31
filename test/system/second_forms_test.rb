require "application_system_test_case"

class SecondFormsTest < ApplicationSystemTestCase
  setup do
    @second_form = second_forms(:one)
  end

  test "visiting the index" do
    visit second_forms_url
    assert_selector "h1", text: "Second Forms"
  end

  test "creating a Second form" do
    visit second_forms_url
    click_on "New Second Form"

    fill_in "Feld1", with: @second_form.feld1
    fill_in "Feld2", with: @second_form.feld2
    click_on "Create Second form"

    assert_text "Second form was successfully created"
    click_on "Back"
  end

  test "updating a Second form" do
    visit second_forms_url
    click_on "Edit", match: :first

    fill_in "Feld1", with: @second_form.feld1
    fill_in "Feld2", with: @second_form.feld2
    click_on "Update Second form"

    assert_text "Second form was successfully updated"
    click_on "Back"
  end

  test "destroying a Second form" do
    visit second_forms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Second form was successfully destroyed"
  end
end
