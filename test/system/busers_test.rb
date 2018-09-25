require "application_system_test_case"

class BusersTest < ApplicationSystemTestCase
  setup do
    @buser = busers(:one)
  end

  test "visiting the index" do
    visit busers_url
    assert_selector "h1", text: "Busers"
  end

  test "creating a Buser" do
    visit busers_url
    click_on "New Buser"

    fill_in "Firstname", with: @buser.firstname
    fill_in "Lastname", with: @buser.lastname
    fill_in "Passwort", with: @buser.passwort
    fill_in "Status", with: @buser.status
    click_on "Create Buser"

    assert_text "Buser was successfully created"
    click_on "Back"
  end

  test "updating a Buser" do
    visit busers_url
    click_on "Edit", match: :first

    fill_in "Firstname", with: @buser.firstname
    fill_in "Lastname", with: @buser.lastname
    fill_in "Passwort", with: @buser.passwort
    fill_in "Status", with: @buser.status
    click_on "Update Buser"

    assert_text "Buser was successfully updated"
    click_on "Back"
  end

  test "destroying a Buser" do
    visit busers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Buser was successfully destroyed"
  end
end
