class AddClubsToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :clubs, :has_many
  end
end
