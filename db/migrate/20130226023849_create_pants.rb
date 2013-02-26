class CreatePants < ActiveRecord::Migration
  def change
    create_table :pants do |t|
      t.string :pant_name
      t.decimal :price
      t.string :pleats
      t.string :cuffs
      t.integer :quantity

      t.timestamps
    end
  end
end
