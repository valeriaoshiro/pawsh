class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.references :imagetable, polymorphic: true

      t.timestamps
    end
  end
end
