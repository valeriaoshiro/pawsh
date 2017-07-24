class RemoveImageFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_attachment :users, :image
  end
end
