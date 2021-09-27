class Category < ApplicationRecord
  has_many_and_belongs_to_many :clubs
end
