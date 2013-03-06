class Droptablesproductsandcustom < ActiveRecord::Migration
  def up
    drop_table :products
    drop_table :customizations

  end

  def down
  end
end