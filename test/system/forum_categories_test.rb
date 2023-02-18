require "application_system_test_case"

class ForumCategoriesTest < ApplicationSystemTestCase
  setup do
    @forum_category = forum_categories(:one)
  end

  test "visiting the index" do
    visit forum_categories_url
    assert_selector "h1", text: "Forum categories"
  end

  test "should create forum category" do
    visit forum_categories_url
    click_on "New forum category"

    fill_in "Forum", with: @forum_category.forum_id
    fill_in "Name", with: @forum_category.name
    click_on "Create Forum category"

    assert_text "Forum category was successfully created"
    click_on "Back"
  end

  test "should update Forum category" do
    visit forum_category_url(@forum_category)
    click_on "Edit this forum category", match: :first

    fill_in "Forum", with: @forum_category.forum_id
    fill_in "Name", with: @forum_category.name
    click_on "Update Forum category"

    assert_text "Forum category was successfully updated"
    click_on "Back"
  end

  test "should destroy Forum category" do
    visit forum_category_url(@forum_category)
    click_on "Destroy this forum category", match: :first

    assert_text "Forum category was successfully destroyed"
  end
end
