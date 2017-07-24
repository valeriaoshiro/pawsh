class RemoveTypeFromLocation < ActiveRecord::Migration[5.1]
  def change
    remove_column :locations, :type, :string
  end
end
