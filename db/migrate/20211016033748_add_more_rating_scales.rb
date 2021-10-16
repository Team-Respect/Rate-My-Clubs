class AddMoreRatingScales < ActiveRecord::Migration[6.1]
  def change
    add_column :ratings, :career_oriented_rating, :decimal, precision: 2, scale: 1
    add_column :ratings, :enjoyment_rating, :decimal, precision: 2, scale: 1
    add_column :ratings, :community_rating, :decimal, precision: 2, scale: 1
  end
end
