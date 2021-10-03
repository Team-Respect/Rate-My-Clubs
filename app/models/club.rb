class Club < ApplicationRecord
  #Validate that the specified attributes are not empty.
  validates :name, :overall_rating, presence: true

  #Validate that the specified attributes are not duplicate.
  validates :name, uniqueness: true

  #Validate that the specified attributes are not less than 5 characters.
  validates :name, length: { minimum: 5 }

end
