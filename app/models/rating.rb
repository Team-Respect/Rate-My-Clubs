class Rating < ApplicationRecord
  belongs_to :user
  belongs_to :club

  #Validate that the specified attributes are not empty.
  validates :general_rating, :description, :school_year, presence: true

  #Validate that the specified attributes are not duplicate.
  validates :description, uniqueness: true

end
