require "application_system_test_case"

class UserToCompaniesTest < ApplicationSystemTestCase
  setup do
    @user_to_company = user_to_companies(:one)
  end

  test "visiting the index" do
    visit user_to_companies_url
    assert_selector "h1", text: "User To Companies"
  end

  test "creating a User to companie" do
    visit user_to_companies_url
    click_on "New User To Companie"

    fill_in "Admin", with: @user_to_company.admin
    fill_in "Company Id", with: @user_to_company.company_id_id
    fill_in "User Id", with: @user_to_company.user_id_id
    click_on "Create User to companie"

    assert_text "User to companie was successfully created"
    click_on "Back"
  end

  test "updating a User to companie" do
    visit user_to_companies_url
    click_on "Edit", match: :first

    fill_in "Admin", with: @user_to_company.admin
    fill_in "Company Id", with: @user_to_company.company_id_id
    fill_in "User Id", with: @user_to_company.user_id_id
    click_on "Update User to companie"

    assert_text "User to companie was successfully updated"
    click_on "Back"
  end

  test "destroying a User to companie" do
    visit user_to_companies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User to companie was successfully destroyed"
  end
end
