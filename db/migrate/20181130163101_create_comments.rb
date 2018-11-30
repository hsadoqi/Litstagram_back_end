class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :content
      t.references :commenter
      t.references :image

      t.timestamps
    end
  end
end
