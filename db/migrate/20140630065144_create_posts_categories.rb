class CreatePostsCategories < ActiveRecord::Migration
  def change
    create_table :posts_categories, :id => false do |t|
		t.references :post
		t.references :category
    end
	add_index :posts_categories, [:post_id, :category_id]
  end
end
