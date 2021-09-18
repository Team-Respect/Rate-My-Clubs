require "application_system_test_case"

class Assignments::A4ThanhQuan::TestsTest < ApplicationSystemTestCase
  setup do
    @assignments_a4_thanh_quan_test = assignments_a4_thanh_quan_tests(:one)
  end

  test "visiting the index" do
    visit assignments_a4_thanh_quan_tests_url
    assert_selector "h1", text: "Assignments/A4 Thanh Quan/Tests"
  end

  test "creating a Test" do
    visit assignments_a4_thanh_quan_tests_url
    click_on "New Assignments/A4 Thanh Quan/Test"

    fill_in "Image", with: @assignments_a4_thanh_quan_test.image
    click_on "Create Test"

    assert_text "Test was successfully created"
    click_on "Back"
  end

  test "updating a Test" do
    visit assignments_a4_thanh_quan_tests_url
    click_on "Edit", match: :first

    fill_in "Image", with: @assignments_a4_thanh_quan_test.image
    click_on "Update Test"

    assert_text "Test was successfully updated"
    click_on "Back"
  end

  test "destroying a Test" do
    visit assignments_a4_thanh_quan_tests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Test was successfully destroyed"
  end
end
