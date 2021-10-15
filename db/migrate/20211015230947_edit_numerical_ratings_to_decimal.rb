class EditNumericalRatingsToDecimal < ActiveRecord::Migration[6.1]
  def change
    change_column :clubs, :overall_rating, :decimal, precision: 2, scale: 1
    change_column :ratings, :general_rating, :decimal, precision: 2, scale: 1
  end
end
