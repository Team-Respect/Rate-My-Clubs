require "test_helper"

class ClubTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "should not save club without name" do
    club = Club.new
    assert_not club.save, "Saved the article without a name"
  end
end
