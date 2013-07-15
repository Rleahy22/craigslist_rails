class CreatePosts < ActiveRecord::Migration
  def up
    create_table :posts do |t|
      t.string :name
      t.references :category
      t.references :user
      t.text :content

      t.timestamps
    end
  end

  def down
  end
end
