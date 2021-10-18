class Category < ApplicationRecord
  # Validate that the category name is not empty.
  # Validate that the category name is not duplicated, or less than 5 characters.
    validates :name, presence: true, uniqueness: true, length: { minimum: 5 }
  
  # Validate that the category description is not empty.
  # Validate that the category description not duplicated, or less than 5 characters.
    validates :description, presence: true, uniqueness: true, length: { minimum: 5 }
  
  has_many :clubs
end
