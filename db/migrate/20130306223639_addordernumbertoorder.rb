class Addordernumbertoorder < ActiveRecord::Migration
  def up
  	add_column :orders, :order_number, :string
  end

  def down
  end
end
