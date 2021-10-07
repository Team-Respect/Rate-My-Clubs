class AddDefaultValueToClubsOverallRating < ActiveRecord::Migration[6.1]
  def change
    change_column :clubs, :overall_rating, :float, :default => -1, :null => false
  end
end
