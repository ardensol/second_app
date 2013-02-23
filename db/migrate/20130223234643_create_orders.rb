class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.decimal :order_value
      t.decimal :order_discount
      t.decimal :order_commission
      t.decimal :order_gross

      t.timestamps
    end
  end
end
