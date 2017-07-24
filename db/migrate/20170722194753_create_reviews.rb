class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.text :comment
      t.references :location, foreign_key: true

      t.timestamps
    end
  end
end
