class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string      :title
      t.text        :image
      t.text        :text
      t.timestamps
    end
  end
end
