class AddCategoryToClub < ActiveRecord::Migration[6.1]
  def change
    add_reference :clubs, :category, null: false, foreign_key: true
  end
end
