class Droptablesproductsandcustom < ActiveRecord::Migration
  def up
  	drop_table :product
  	drop_table :customization
  end

  def down
  end
end
