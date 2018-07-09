class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :location, :string
    add_column :users, :following, :text
    add_column :users, :avatar, :string
    add_column :users, :bio, :text
  end
end
