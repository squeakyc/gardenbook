class AddNotesToPlants < ActiveRecord::Migration[5.2]
  def change
    add_column :plants, :notes, :text
  end
end
