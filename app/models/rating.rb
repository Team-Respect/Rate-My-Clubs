class Rating < ApplicationRecord
  #belongs_to :user
  belongs_to :club

  # Validate that the general rating, description, and school year are not empty.
  validates :general_rating, :description, presence: true

  # Validate that the description are not duplicate.
  validates :description, uniqueness: true

  # Validate general rating is a number between 1 and 5
  validates_inclusion_of :general_rating, :in => 1..5

end
