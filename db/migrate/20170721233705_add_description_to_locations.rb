class AddDescriptionToLocations < ActiveRecord::Migration[5.1]
  def change
    add_column :locations, :description, :string
  end
end
