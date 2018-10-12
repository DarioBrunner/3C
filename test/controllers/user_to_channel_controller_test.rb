require 'test_helper'

class UserToChannelControllerTest < ActionDispatch::IntegrationTest
  test "should get user:references" do
    get user_to_channel_user:references_url
    assert_response :success
  end

  test "should get channel:references" do
    get user_to_channel_channel:references_url
    assert_response :success
  end

  test "should get blogging:boolean" do
    get user_to_channel_blogging:boolean_url
    assert_response :success
  end

  test "should get writting:boolean" do
    get user_to_channel_writting:boolean_url
    assert_response :success
  end

end
