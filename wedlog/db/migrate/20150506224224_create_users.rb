class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :fname
      t.string :lname
      t.string :email
      t.text :bio, limit:(400)
      t.string :password
      t.string :city
      t.string :state
      t.string :country
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps null: false
    end
  end
end
