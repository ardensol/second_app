class CreateSuits < ActiveRecord::Migration
  def change
    create_table :suits do |t|
      t.string :suit_name
      t.decimal :price
      t.string :lapel
      t.string :vent
      t.string :button
      t.string :contrast_color
      t.string :contrast_area
      t.string :advanced
      t.string :pleats
      t.string :cuffs
      t.integer :quantity

      t.timestamps
    end
  end
end
