class CreatePrecaps < ActiveRecord::Migration
  def change
    create_table :precaps do |t|
      t.string :description

      t.timestamps
    end
  end
end
