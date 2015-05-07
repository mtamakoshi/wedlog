class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :comment_body
      t.integer :user_id
      t.integer :post_id
      t.datetime :created_at

      t.timestamps null: false
    end
  end
end
