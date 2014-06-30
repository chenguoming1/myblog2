class CreatePostsCategories < ActiveRecord::Migration
  def change
    create_table :posts_categories, :id => false do |t|
		t.references :post
		t.references :category
    end
	add_index :posts_categories, [:post_id, :category_id]
    #add_index :posts_categories, :user_id
  end
end

#rails generate model Comment comment:text post:references

#  def self.up
#    create_table :restaurants_users, :id => false do |t|
#        t.references :restaurant
#        t.references :user
#    end
#    add_index :restaurants_users, [:restaurant_id, :user_id]
#    add_index :restaurants_users, :user_id
#  end
#
#  def self.down
#    drop_table :restaurants_users
#  end