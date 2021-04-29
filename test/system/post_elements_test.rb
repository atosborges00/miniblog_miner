require "application_system_test_case"

class PostElementsTest < ApplicationSystemTestCase
  setup do
    @post_element = post_elements(:one)
  end

  test "visiting the index" do
    visit post_elements_url
    assert_selector "h1", text: "Post Elements"
  end

  test "creating a Post element" do
    visit post_elements_url
    click_on "New Post Element"

    fill_in "Content", with: @post_element.content
    fill_in "Element type", with: @post_element.element_type
    fill_in "Position", with: @post_element.position
    fill_in "Post", with: @post_element.post_id
    click_on "Create Post element"

    assert_text "Post element was successfully created"
    click_on "Back"
  end

  test "updating a Post element" do
    visit post_elements_url
    click_on "Edit", match: :first

    fill_in "Content", with: @post_element.content
    fill_in "Element type", with: @post_element.element_type
    fill_in "Position", with: @post_element.position
    fill_in "Post", with: @post_element.post_id
    click_on "Update Post element"

    assert_text "Post element was successfully updated"
    click_on "Back"
  end

  test "destroying a Post element" do
    visit post_elements_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Post element was successfully destroyed"
  end
end
