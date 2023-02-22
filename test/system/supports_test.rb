require "application_system_test_case"

class SupportsTest < ApplicationSystemTestCase
  setup do
    @support = supports(:one)
  end

  test "visiting the index" do
    visit supports_url
    assert_selector "h1", text: "Supports"
  end

  test "should create support" do
    visit supports_url
    click_on "New support"

    click_on "Create Support"

    assert_text "Support was successfully created"
    click_on "Back"
  end

  test "should update Support" do
    visit support_url(@support)
    click_on "Edit this support", match: :first

    click_on "Update Support"

    assert_text "Support was successfully updated"
    click_on "Back"
  end

  test "should destroy Support" do
    visit support_url(@support)
    click_on "Destroy this support", match: :first

    assert_text "Support was successfully destroyed"
  end
end
