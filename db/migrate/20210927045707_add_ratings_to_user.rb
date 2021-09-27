class AddRatingsToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :ratings, :has_many
  end
end
