class Droptables < ActiveRecord::Migration
  def up
  	drop_table :products
  	drop_table :orders
  	drop_table :customizations
  end

  def down
  end
end
