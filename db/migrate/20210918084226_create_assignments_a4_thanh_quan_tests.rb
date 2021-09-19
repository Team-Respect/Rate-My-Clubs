class CreateAssignmentsA4ThanhQuanTests < ActiveRecord::Migration[6.1]
  def change
    create_table :assignments_a4_thanh_quan_tests do |t|
      t.string :image

      t.timestamps
    end
  end
end
