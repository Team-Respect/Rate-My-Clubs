require "test_helper"

class RatingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "description should not be blank to be saved" do
    club = Rating.new
    assert_not rating.save, "blank description saved"
  end
end
