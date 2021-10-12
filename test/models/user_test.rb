require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "cannot save user without a username" do
    user = User.new
    assert_not user.save, "saved user without a username"
  end
end
