require "application_system_test_case"

class ForumsTest < ApplicationSystemTestCase
  setup do
    @forum = forums(:one)
  end

  test "visiting the index" do
    visit forums_url
    assert_selector "h1", text: "Forums"
  end

  test "should create forum" do
    visit forums_url
    click_on "New forum"

    fill_in "Description", with: @forum.description
    fill_in "Tags", with: @forum.tags
    fill_in "Title", with: @forum.title
    click_on "Create Forum"

    assert_text "Forum was successfully created"
    click_on "Back"
  end

  test "should update Forum" do
    visit forum_url(@forum)
    click_on "Edit this forum", match: :first

    fill_in "Description", with: @forum.description
    fill_in "Tags", with: @forum.tags
    fill_in "Title", with: @forum.title
    click_on "Update Forum"

    assert_text "Forum was successfully updated"
    click_on "Back"
  end

  test "should destroy Forum" do
    visit forum_url(@forum)
    click_on "Destroy this forum", match: :first

    assert_text "Forum was successfully destroyed"
  end
end
