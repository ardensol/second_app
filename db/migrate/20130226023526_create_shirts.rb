class CreateShirts < ActiveRecord::Migration
  def change
    create_table :shirts do |t|
      t.string :shirt_name
      t.decimal :price
      t.string :collar
      t.string :cuffs
      t.string :placket
      t.string :pocket
      t.string :fit
      t.string :bottom
      t.string :contrast_color
      t.string :contrast_area
      t.string :monongram
      t.integer :quantity

      t.timestamps
    end
  end
end
