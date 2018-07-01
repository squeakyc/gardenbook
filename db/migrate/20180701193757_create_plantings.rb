class CreatePlantings < ActiveRecord::Migration[5.2]
  def change
    create_table :plantings do |t|
      t.integer :garden_id
      t.integer :plant_id

      t.timestamps
    end
  end
end
