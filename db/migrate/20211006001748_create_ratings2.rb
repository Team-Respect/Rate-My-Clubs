class CreateRatings2 < ActiveRecord::Migration[6.1]
  def change
    create_table :ratings do |t|
      t.float :general_rating
      t.text :description
      t.string :school_year

      t.timestamps
    end
  end
end
