class Club < ApplicationRecord
  # Validate that the club name and overall rating are not empty.
  # Validate that the club name is not duplicated, or less than 5 characters.
  validates :name, presence: true, uniqueness: true, length: { minimum: 5 }

  # Validate that the overall rating is a number between 1 and 5

  # NOTE: Removed since users should not be able to edit this default value.
  # validates_inclusion_of :overall_rating, :in => 1..5

  belongs_to :category
  has_many :ratings, dependent: :destroy

  def self.search(search)
    if search
      club = Club.find_by(name: search)
      if club
        self.where(id: club)
      else
        Club.all
      end
    else
      Club.all
    end
  end
end
