class AddImageToMycycles < ActiveRecord::Migration
  def change
    add_column :mycycles, :image, :text
  end
end
