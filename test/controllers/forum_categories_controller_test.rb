require "test_helper"

class ForumCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @forum_category = forum_categories(:one)
  end

  test "should get index" do
    get forum_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_forum_category_url
    assert_response :success
  end

  test "should create forum_category" do
    assert_difference("ForumCategory.count") do
      post forum_categories_url, params: { forum_category: { forum_id: @forum_category.forum_id, name: @forum_category.name } }
    end

    assert_redirected_to forum_category_url(ForumCategory.last)
  end

  test "should show forum_category" do
    get forum_category_url(@forum_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_forum_category_url(@forum_category)
    assert_response :success
  end

  test "should update forum_category" do
    patch forum_category_url(@forum_category), params: { forum_category: { forum_id: @forum_category.forum_id, name: @forum_category.name } }
    assert_redirected_to forum_category_url(@forum_category)
  end

  test "should destroy forum_category" do
    assert_difference("ForumCategory.count", -1) do
      delete forum_category_url(@forum_category)
    end

    assert_redirected_to forum_categories_url
  end
end
