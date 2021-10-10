require "test_helper"

class CategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "description should not be blank to be saved" do
    category = Category.new
    assert_not category.save, "blank description saved"
  end
end
