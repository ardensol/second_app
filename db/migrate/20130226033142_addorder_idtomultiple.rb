class AddorderIdtomultiple < ActiveRecord::Migration
  def up
  	add_column :others, :order_id, :integer
  	add_column :shirts, :order_id, :integer
  	add_column :suits, :order_id, :integer
  	add_column :pants, :order_id, :integer
  end

  def down
  end
end
