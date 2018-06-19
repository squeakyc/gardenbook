class AddGardenIdToSections < ActiveRecord::Migration[5.2]
  def change
    add_column :sections, :garden_id, :integer
  end
end
