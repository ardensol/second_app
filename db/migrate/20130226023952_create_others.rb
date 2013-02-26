class CreateOthers < ActiveRecord::Migration
  def change
    create_table :others do |t|
      t.string :other_name
      t.decimal :price
      t.string :description
      t.integer :quantity

      t.timestamps
    end
  end
end
