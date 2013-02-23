class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :order_id
      t.string :product_name
      t.decimal :product_price

      t.timestamps
    end
  end
end
