class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.integer :like_count
      t.integer :follower_id
      t.integer :image_id

      t.timestamps
    end
  end
end
