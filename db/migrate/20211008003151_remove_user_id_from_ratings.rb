class RemoveUserIdFromRatings < ActiveRecord::Migration[6.1]
  def change
    revert do
      add_reference :ratings, :user, null: false, foreign_key: true
    end
  end
end
