require 'test_helper'

class FirstFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @first_form = first_forms(:one)
  end

  test "should get index" do
    get first_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_first_form_url
    assert_response :success
  end

  test "should create first_form" do
    assert_difference('FirstForm.count') do
      post first_forms_url, params: { first_form: { feld1: @first_form.feld1, feld2: @first_form.feld2 } }
    end

    assert_redirected_to first_form_url(FirstForm.last)
  end

  test "should show first_form" do
    get first_form_url(@first_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_first_form_url(@first_form)
    assert_response :success
  end

  test "should update first_form" do
    patch first_form_url(@first_form), params: { first_form: { feld1: @first_form.feld1, feld2: @first_form.feld2 } }
    assert_redirected_to first_form_url(@first_form)
  end

  test "should destroy first_form" do
    assert_difference('FirstForm.count', -1) do
      delete first_form_url(@first_form)
    end

    assert_redirected_to first_forms_url
  end
end
