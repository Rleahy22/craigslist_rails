class CreatePosts < ActiveRecord::Migration
  def up
    create_table :posts do |t|
      t.string :name
      t.integer :cateogry_id
      t.integer :user_id
      t.text :content

      t.timestamps
    end
  end

  def down
  end
end
