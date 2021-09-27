class Club < ApplicationRecord
  belongs_to :user # Just to prevent trolling, might not implement
  has_many :ratings
end
