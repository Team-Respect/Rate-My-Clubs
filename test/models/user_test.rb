require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "cannot create user without a name" do
    user = User.new
    assert_not user.save, "blank user saved"
  end
end
