class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :author, null: false
      t.string :email, null: false
      t.string :url
      t.text :body, null: false
      t.references :post

      t.timestamps
    end
    add_index :comments, :post_id
  end
end
