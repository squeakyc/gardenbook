class AddPlantIdToGardens < ActiveRecord::Migration[5.2]
  def change
    add_column :gardens, :plant_id, :integer
  end
end
