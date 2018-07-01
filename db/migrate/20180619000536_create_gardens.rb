class CreateGardens < ActiveRecord::Migration[5.2]
  def change
    create_table :gardens do |t|
      t.integer :user_id
      t.string :name
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
