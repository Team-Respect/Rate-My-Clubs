class Rating < ApplicationRecord
  belongs_to :user
  belongs_to :club

  # Validate that the ratings, description, and school year are not empty.
  validates :general_rating, :career_oriented_rating, :enjoyment_rating, :community_rating, 
            :description, presence: true

  # Validate that the description are maximum 500 characters and not duplicate.
  validates :description, length: { maximum: 500 }, uniqueness: true

  # Validate ratings is a number between 1 and 5
  validates_inclusion_of :general_rating, :career_oriented_rating, :enjoyment_rating, :community_rating, 
                          :in => 1..5

end
