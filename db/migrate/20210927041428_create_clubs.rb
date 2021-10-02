class CreateClubs < ActiveRecord::Migration[6.1]
  def change
    create_table :clubs do |t|
      t.string :name
      t.float :overall_rating

      t.timestamps
    end
  end
end