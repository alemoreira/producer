class CreateCategoriesPosts < ActiveRecord::Migration
  def change
    # create_table 'categories_posts', :id => false, :force => true do |t|
    create_table :categories_posts do |t|
      t.integer 'post_id', null: false
      t.integer 'category_id', null: false
    end
  end

end
