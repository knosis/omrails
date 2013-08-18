class AddUserIdToPrecaps < ActiveRecord::Migration
  def change
    add_column :precaps, :user_id, :integer
    add_index :precaps, :user_id
  end
end
