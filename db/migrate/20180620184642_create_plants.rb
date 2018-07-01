class CreatePlants < ActiveRecord::Migration[5.2]
  def change
    create_table :plants do |t|
      t.integer :user_id
      t.string :latin_name
      t.string :common_name
      t.integer :garden_id
      t.integer :collection_id
      t.string :image
      t.timestamps
    end
  end
end
