class AddClubsToCategory < ActiveRecord::Migration[6.1]
  def change
    add_column :categories, :clubs, :has_many_and_belongs_to_many
  end
end
