require 'test_helper'

class CopyrigthsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @copyrigth = copyrigths(:one)
  end

  test "should get index" do
    get copyrigths_url
    assert_response :success
  end

  test "should get new" do
    get new_copyrigth_url
    assert_response :success
  end

  test "should create copyrigth" do
    assert_difference('Copyrigth.count') do
      post copyrigths_url, params: { copyrigth: { copy: @copyrigth.copy } }
    end

    assert_redirected_to copyrigth_url(Copyrigth.last)
  end

  test "should show copyrigth" do
    get copyrigth_url(@copyrigth)
    assert_response :success
  end

  test "should get edit" do
    get edit_copyrigth_url(@copyrigth)
    assert_response :success
  end

  test "should update copyrigth" do
    patch copyrigth_url(@copyrigth), params: { copyrigth: { copy: @copyrigth.copy } }
    assert_redirected_to copyrigth_url(@copyrigth)
  end

  test "should destroy copyrigth" do
    assert_difference('Copyrigth.count', -1) do
      delete copyrigth_url(@copyrigth)
    end

    assert_redirected_to copyrigths_url
  end
end
