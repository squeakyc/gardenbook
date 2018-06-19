class CreateGardens < ActiveRecord::Migration[5.2]
  def change
    create_table :gardens do |t|
      t.string :name
      t.text :bio
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
