class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.references :blog
      t.references :user

      t.timestamps
    end
    add_index :posts, :blog_id
    add_index :posts, :user_id
  end
end
