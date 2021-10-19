require "test_helper"

class RatingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rating = ratings(:one)
  end

  test "should get index" do
    get ratings_url
    assert_response :success
  end

  test "should get new" do
    # Test throws an error

    # get new_rating_url
    # assert_response :success
  end

  test "should create rating" do
    # Test throws an error
    
    # assert_difference('Rating.count') do
    #   post ratings_url, params: { 
    #     rating: 
    #       { 
    #         general_rating: @rating.general_rating, 
    #         description: @rating.description, 
    #         career_oriented_rating: @rating.career_oriented_rating, 
    #         enjoyment_rating: @rating.enjoyment_rating, 
    #         community_rating: @rating.community_rating, 
    #         club_id: @rating.club_id,
    #         user_id: @rating.user_id 
    #       } 
    #   }
    # end

    # assert_redirected_to rating_url(Rating.last)
  end

  test "should show rating" do
    get rating_url(@rating)
    assert_response :success
  end

  test "should get edit" do
    # Test throws an error

    # get edit_rating_url(@rating)
    # assert_response :success
  end

  test "should update rating" do
    # Test throws an error

    # patch rating_url(@rating), 
    #   params: { 
    #       rating: 
    #         { 
    #           general_rating: @rating.general_rating, 
    #           description: @rating.description, 
    #           career_oriented_rating: @rating.career_oriented_rating, 
    #           enjoyment_rating: @rating.enjoyment_rating, 
    #           community_rating: @rating.community_rating, 
    #           club_id: @rating.club_id,
    #           user_id: @rating.user_id 
    #         } 
    #     }
    # assert_redirected_to rating_url(@rating)
  end

  test "should destroy rating" do
    # Test throws an error

    # assert_difference('Rating.count', -1) do
    #   delete rating_url(@rating)
    # end

    # assert_redirected_to ratings_url
  end
end
