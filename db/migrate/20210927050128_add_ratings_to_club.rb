class AddRatingsToClub < ActiveRecord::Migration[6.1]
  def change
    add_column :clubs, :ratings, :has_many
  end
end
