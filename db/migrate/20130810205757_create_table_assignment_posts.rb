class CreateTableAssignmentPosts < ActiveRecord::Migration
  def change
    create_table :assignment_posts do |t|
      t.integer :post_id
      t.integer :assignment_id

      t.timestamps
    end
  end
end
