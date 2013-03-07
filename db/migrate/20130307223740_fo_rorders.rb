class FoRorders < ActiveRecord::Migration
  def up
  	remove_column :orders, :delivered
  	remove_column :orders, :received_measurement
  	remove_column :orders, :in_process
  	remove_column :orders, :readytoship
  	remove_column :orders, :shipped
  	remove_column :orders, :order_commission
  	add_column :orders, :status, :string
  	add_column :orders, :order_cogs, :decimal
  	add_column :orders, :assigned_factory, :string
  	add_column :orders, :order_date, :date
  	add_column :orders, :expected_ship_date, :date
  	add_column :orders, :shipped_date, :date
  end

  def down
  end
end
