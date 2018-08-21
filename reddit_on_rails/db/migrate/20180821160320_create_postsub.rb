class CreatePostsub < ActiveRecord::Migration[5.2]
  def change
    create_table :postsubs do |t|
      t.integer :sub_id
      t.integer :post_id
    end
    add_index :postsubs, :sub_id
    add_index :postsubs, :post_id
  end
end
