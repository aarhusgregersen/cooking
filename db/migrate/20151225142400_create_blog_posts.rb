class CreateBlogPosts < ActiveRecord::Migration
  def change
    create_table :blog_posts do |t|
      t.string :title
      t.textfield :post
      t.datetime :time

      t.timestamps null: false
    end
  end
end
