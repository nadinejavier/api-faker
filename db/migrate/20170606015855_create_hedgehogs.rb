class CreateHedgehogs < ActiveRecord::Migration[5.0]
  def change
    create_table :hedgehogs do |t|
      t.string :first_name
      t.string :color
      t.integer :age
      t.string :favorite_food

      t.timestamps
    end
  end
end
