class RemoveClubsFromCategories < ActiveRecord::Migration[6.1]
  def change
    remove_column :categories, :clubs
  end
end
