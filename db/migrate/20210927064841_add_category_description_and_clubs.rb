class AddCategoryDescriptionAndClubs < ActiveRecord::Migration[6.1]
  def change
    add_column :categories, :description, :text
    add_column :categories, :clubs, :text
  end
end
