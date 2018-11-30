class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.string :caption
      t.string :img
      t.integer :poster_id

      t.timestamps
    end
  end
end
