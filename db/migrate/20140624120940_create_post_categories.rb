class CreatePostCategories < ActiveRecord::Migration
  def change
    create_table :post_categories do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
