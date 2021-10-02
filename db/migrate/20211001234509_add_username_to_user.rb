class AddUsernameToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :usermanagements, :username, :string, index:true, unique:true
  end
end
