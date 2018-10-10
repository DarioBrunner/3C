require 'test_helper'

class DataprotectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dataprotection = dataprotections(:one)
  end

  test "should get index" do
    get dataprotections_url
    assert_response :success
  end

  test "should get new" do
    get new_dataprotection_url
    assert_response :success
  end

  test "should create dataprotection" do
    assert_difference('Dataprotection.count') do
      post dataprotections_url, params: { dataprotection: { content: @dataprotection.content } }
    end

    assert_redirected_to dataprotection_url(Dataprotection.last)
  end

  test "should show dataprotection" do
    get dataprotection_url(@dataprotection)
    assert_response :success
  end

  test "should get edit" do
    get edit_dataprotection_url(@dataprotection)
    assert_response :success
  end

  test "should update dataprotection" do
    patch dataprotection_url(@dataprotection), params: { dataprotection: { content: @dataprotection.content } }
    assert_redirected_to dataprotection_url(@dataprotection)
  end

  test "should destroy dataprotection" do
    assert_difference('Dataprotection.count', -1) do
      delete dataprotection_url(@dataprotection)
    end

    assert_redirected_to dataprotections_url
  end
end
