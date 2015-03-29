class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :provider
      t.string :oauth_token
      t.string :uid
      t.string :name

      t.timestamps null: false
    end
  end
end
