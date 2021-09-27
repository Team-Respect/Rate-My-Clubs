class Club < ApplicationRecord
  belongs_to :user # Just to prevent trolling, might not implement
  has_many :ratings
  has_many_and_belongs_to_many :categories
end
