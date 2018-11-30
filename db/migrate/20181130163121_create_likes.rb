class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.integer :like_count
      t.references :liker
      t.references :image


      t.timestamps
    end
  end
end
