class ChangeUsermanagementsToUsers < ActiveRecord::Migration[6.1]
  def change
    rename_table :usermanagements, :users
  end
end
