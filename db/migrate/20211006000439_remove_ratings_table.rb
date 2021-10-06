class RemoveRatingsTable < ActiveRecord::Migration[6.1]
  def up
    drop_table :ratings
  end
end
