class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.string :make,  null: false
      t.string :model,  null: false
      t.string :colors,  array: true, default: [], null: false
      t.string :photo,  null: false
      t.string :price,  null: false
      t.references :car_range, null: false, foreign_key: true

      t.timestamps
    end
  end
end
