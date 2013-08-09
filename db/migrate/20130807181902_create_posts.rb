class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.string :image_1
      t.string :image_2
      t.string :image_3
      t.text :video
      t.string :link

      t.timestamps
    end
  end
end
