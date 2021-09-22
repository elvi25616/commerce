require "application_system_test_case"

class MyimagesTest < ApplicationSystemTestCase
  setup do
    @myimage = myimages(:one)
  end

  test "visiting the index" do
    visit myimages_url
    assert_selector "h1", text: "Myimages"
  end

  test "creating a Myimage" do
    visit myimages_url
    click_on "New Myimage"

    fill_in "Description", with: @myimage.description
    fill_in "Img", with: @myimage.img
    fill_in "Product", with: @myimage.product_id
    fill_in "Title", with: @myimage.title
    click_on "Create Myimage"

    assert_text "Myimage was successfully created"
    click_on "Back"
  end

  test "updating a Myimage" do
    visit myimages_url
    click_on "Edit", match: :first

    fill_in "Description", with: @myimage.description
    fill_in "Img", with: @myimage.img
    fill_in "Product", with: @myimage.product_id
    fill_in "Title", with: @myimage.title
    click_on "Update Myimage"

    assert_text "Myimage was successfully updated"
    click_on "Back"
  end

  test "destroying a Myimage" do
    visit myimages_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Myimage was successfully destroyed"
  end
end
