require 'test_helper'

class UserToCompaniesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_to_company = user_to_companies(:one)
  end

  test "should get index" do
    get user_to_companies_url
    assert_response :success
  end

  test "should get new" do
    get new_user_to_company_url
    assert_response :success
  end

  test "should create user_to_company" do
    assert_difference('UserToCompanie.count') do
      post user_to_companies_url, params: { user_to_company: { admin: @user_to_company.admin, company_id_id: @user_to_company.company_id_id, user_id_id: @user_to_company.user_id_id } }
    end

    assert_redirected_to user_to_company_url(UserToCompanie.last)
  end

  test "should show user_to_company" do
    get user_to_company_url(@user_to_company)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_to_company_url(@user_to_company)
    assert_response :success
  end

  test "should update user_to_company" do
    patch user_to_company_url(@user_to_company), params: { user_to_company: { admin: @user_to_company.admin, company_id_id: @user_to_company.company_id_id, user_id_id: @user_to_company.user_id_id } }
    assert_redirected_to user_to_company_url(@user_to_company)
  end

  test "should destroy user_to_company" do
    assert_difference('UserToCompanie.count', -1) do
      delete user_to_company_url(@user_to_company)
    end

    assert_redirected_to user_to_companies_url
  end
end
