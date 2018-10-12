require 'test_helper'

class ImpressumsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @impressum = impressums(:one)
  end

  test "should get index" do
    get impressums_url
    assert_response :success
  end

  test "should get new" do
    get new_impressum_url
    assert_response :success
  end

  test "should create impressum" do
    assert_difference('Impressum.count') do
      post impressums_url, params: { impressum: { context: @impressum.context } }
    end

    assert_redirected_to impressum_url(Impressum.last)
  end

  test "should show impressum" do
    get impressum_url(@impressum)
    assert_response :success
  end

  test "should get edit" do
    get edit_impressum_url(@impressum)
    assert_response :success
  end

  test "should update impressum" do
    patch impressum_url(@impressum), params: { impressum: { context: @impressum.context } }
    assert_redirected_to impressum_url(@impressum)
  end

  test "should destroy impressum" do
    assert_difference('Impressum.count', -1) do
      delete impressum_url(@impressum)
    end

    assert_redirected_to impressums_url
  end
end
