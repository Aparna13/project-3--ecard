class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :image_url
      t.text :desc
      t.string :title
      t.boolean :is_shareable

      t.timestamps null: false
    end
  end
end
