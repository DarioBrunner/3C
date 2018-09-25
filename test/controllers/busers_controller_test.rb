require 'test_helper'

class BusersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @buser = busers(:one)
  end

  test "should get index" do
    get busers_url
    assert_response :success
  end

  test "should get new" do
    get new_buser_url
    assert_response :success
  end

  test "should create buser" do
    assert_difference('Buser.count') do
      post busers_url, params: { buser: { firstname: @buser.firstname, lastname: @buser.lastname, passwort: @buser.passwort, status: @buser.status } }
    end

    assert_redirected_to buser_url(Buser.last)
  end

  test "should show buser" do
    get buser_url(@buser)
    assert_response :success
  end

  test "should get edit" do
    get edit_buser_url(@buser)
    assert_response :success
  end

  test "should update buser" do
    patch buser_url(@buser), params: { buser: { firstname: @buser.firstname, lastname: @buser.lastname, passwort: @buser.passwort, status: @buser.status } }
    assert_redirected_to buser_url(@buser)
  end

  test "should destroy buser" do
    assert_difference('Buser.count', -1) do
      delete buser_url(@buser)
    end

    assert_redirected_to busers_url
  end
end
