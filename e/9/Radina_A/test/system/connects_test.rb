require "application_system_test_case"

class ConnectsTest < ApplicationSystemTestCase
  setup do
    @connect = connects(:one)
  end

  test "visiting the index" do
    visit connects_url
    assert_selector "h1", text: "Connects"
  end

  test "creating a Connect" do
    visit connects_url
    click_on "New Connect"

    fill_in "School", with: @connect.school_id
    fill_in "Teacher", with: @connect.teacher_id
    click_on "Create Connect"

    assert_text "Connect was successfully created"
    click_on "Back"
  end

  test "updating a Connect" do
    visit connects_url
    click_on "Edit", match: :first

    fill_in "School", with: @connect.school_id
    fill_in "Teacher", with: @connect.teacher_id
    click_on "Update Connect"

    assert_text "Connect was successfully updated"
    click_on "Back"
  end

  test "destroying a Connect" do
    visit connects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Connect was successfully destroyed"
  end
end
