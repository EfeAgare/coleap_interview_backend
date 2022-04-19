class CreateCarRanges < ActiveRecord::Migration[6.1]
  def change
    create_table :car_ranges do |t|
      t.string :unit, null: false
      t.string :distance, null: false

      t.timestamps
    end
  end
end
