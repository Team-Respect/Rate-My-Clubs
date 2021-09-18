require "test_helper"

class Assignments::A4ThanhQuan::TestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @assignments_a4_thanh_quan_test = assignments_a4_thanh_quan_tests(:one)
  end

  test "should get index" do
    get assignments_a4_thanh_quan_tests_url
    assert_response :success
  end

  test "should get new" do
    get new_assignments_a4_thanh_quan_test_url
    assert_response :success
  end

  test "should create assignments_a4_thanh_quan_test" do
    assert_difference('Assignments::A4ThanhQuan::Test.count') do
      post assignments_a4_thanh_quan_tests_url, params: { assignments_a4_thanh_quan_test: { image: @assignments_a4_thanh_quan_test.image } }
    end

    assert_redirected_to assignments_a4_thanh_quan_test_url(Assignments::A4ThanhQuan::Test.last)
  end

  test "should show assignments_a4_thanh_quan_test" do
    get assignments_a4_thanh_quan_test_url(@assignments_a4_thanh_quan_test)
    assert_response :success
  end

  test "should get edit" do
    get edit_assignments_a4_thanh_quan_test_url(@assignments_a4_thanh_quan_test)
    assert_response :success
  end

  test "should update assignments_a4_thanh_quan_test" do
    patch assignments_a4_thanh_quan_test_url(@assignments_a4_thanh_quan_test), params: { assignments_a4_thanh_quan_test: { image: @assignments_a4_thanh_quan_test.image } }
    assert_redirected_to assignments_a4_thanh_quan_test_url(@assignments_a4_thanh_quan_test)
  end

  test "should destroy assignments_a4_thanh_quan_test" do
    assert_difference('Assignments::A4ThanhQuan::Test.count', -1) do
      delete assignments_a4_thanh_quan_test_url(@assignments_a4_thanh_quan_test)
    end

    assert_redirected_to assignments_a4_thanh_quan_tests_url
  end
end
