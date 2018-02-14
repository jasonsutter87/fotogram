class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.integer :filter_id
      t.integer :photo_id
      t.integer :user_id
      t.float :filter_opacity
      t.text :description
      t.string :location
      t.timestamps
    end
  end
end
