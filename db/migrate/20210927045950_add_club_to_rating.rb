class AddClubToRating < ActiveRecord::Migration[6.1]
  def change
    add_reference :ratings, :club, null: false, foreign_key: true
  end
end
