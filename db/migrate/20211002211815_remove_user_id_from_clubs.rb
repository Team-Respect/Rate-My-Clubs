class RemoveUserIdFromClubs < ActiveRecord::Migration[6.1]
  def change
    revert do
      add_reference :clubs, :user, null: false, foreign_key: true
    end
  end
end
