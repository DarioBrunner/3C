require 'test_helper'

class SecondFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @second_form = second_forms(:one)
  end

  test "should get index" do
    get second_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_second_form_url
    assert_response :success
  end

  test "should create second_form" do
    assert_difference('SecondForm.count') do
      post second_forms_url, params: { second_form: { feld1: @second_form.feld1, feld2: @second_form.feld2 } }
    end

    assert_redirected_to second_form_url(SecondForm.last)
  end

  test "should show second_form" do
    get second_form_url(@second_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_second_form_url(@second_form)
    assert_response :success
  end

  test "should update second_form" do
    patch second_form_url(@second_form), params: { second_form: { feld1: @second_form.feld1, feld2: @second_form.feld2 } }
    assert_redirected_to second_form_url(@second_form)
  end

  test "should destroy second_form" do
    assert_difference('SecondForm.count', -1) do
      delete second_form_url(@second_form)
    end

    assert_redirected_to second_forms_url
  end
end
