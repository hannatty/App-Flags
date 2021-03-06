require "application_system_test_case"

class FlagsTest < ApplicationSystemTestCase
  setup do
    @flag = flags(:one)
  end

  test "visiting the index" do
    visit flags_url
    assert_selector "h1", text: "Flags"
  end

  test "creating a Flag" do
    visit flags_url
    click_on "New Flag"

    fill_in "Acronym", with: @flag.acronym
    fill_in "Capital", with: @flag.capital
    fill_in "State", with: @flag.state
    fill_in "Url img", with: @flag.url_img
    click_on "Create Flag"

    assert_text "Flag was successfully created"
    click_on "Back"
  end

  test "updating a Flag" do
    visit flags_url
    click_on "Edit", match: :first

    fill_in "Acronym", with: @flag.acronym
    fill_in "Capital", with: @flag.capital
    fill_in "State", with: @flag.state
    fill_in "Url img", with: @flag.url_img
    click_on "Update Flag"

    assert_text "Flag was successfully updated"
    click_on "Back"
  end

  test "destroying a Flag" do
    visit flags_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Flag was successfully destroyed"
  end
end
