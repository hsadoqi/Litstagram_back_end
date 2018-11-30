class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.string :caption
      t.string :img
      t.references :poster

      t.timestamps
    end
  end
end
