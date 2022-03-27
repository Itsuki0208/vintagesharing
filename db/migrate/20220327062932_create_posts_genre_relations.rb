class CreatePostsGenreRelations < ActiveRecord::Migration[5.2]
  def change
    create_table :posts_genre_relations do |t|
      t.integer :post_id
      t.integer :genre_id

      t.timestamps
    end
  end
end
