class AddMoreRatingsToClubs < ActiveRecord::Migration[6.1]
  def change
    add_column :clubs, :career_oriented_rating, :decimal, precision: 2, scale: 1, default: "-1.0", null: false
    add_column :clubs, :enjoyment_rating, :decimal, precision: 2, scale: 1, default: "-1.0", null: false
    add_column :clubs, :community_rating, :decimal, precision: 2, scale: 1, default: "-1.0", null: false
  end
end
