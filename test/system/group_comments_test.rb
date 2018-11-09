require "application_system_test_case"

class GroupCommentsTest < ApplicationSystemTestCase
  setup do
    @group_comment = group_comments(:one)
  end

  test "visiting the index" do
    visit group_comments_url
    assert_selector "h1", text: "Group Comments"
  end

  test "creating a Group comment" do
    visit group_comments_url
    click_on "New Group Comment"

    fill_in "Comment", with: @group_comment.comment
    fill_in "Group Message", with: @group_comment.group_message_id
    fill_in "User", with: @group_comment.user_id
    click_on "Create Group comment"

    assert_text "Group comment was successfully created"
    click_on "Back"
  end

  test "updating a Group comment" do
    visit group_comments_url
    click_on "Edit", match: :first

    fill_in "Comment", with: @group_comment.comment
    fill_in "Group Message", with: @group_comment.group_message_id
    fill_in "User", with: @group_comment.user_id
    click_on "Update Group comment"

    assert_text "Group comment was successfully updated"
    click_on "Back"
  end

  test "destroying a Group comment" do
    visit group_comments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Group comment was successfully destroyed"
  end
end
