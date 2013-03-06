class Addcolumnstoorderforstatus < ActiveRecord::Migration
  def up
  	add_column :orders, :received_measurement, :boolean
  	add_column :orders, :in_process, :boolean
  	add_column :orders, :readytoship, :boolean
  	add_column :orders, :shipped, :boolean
  	add_column :orders, :shipping_number, :string
  end

  def down
  end
end
