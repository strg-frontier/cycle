class CreateMycycles < ActiveRecord::Migration
  def change
    create_table :mycycles do |t|
      t.string :maker
      t.string :name
      t.integer :user_id
      t.timestamps
    end
  end
end
