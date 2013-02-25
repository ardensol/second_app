class Addaltandreftoorders < ActiveRecord::Migration
  def up
  	add_column :orders, :altered, :boolean
  	add_column :orders, :refunded, :boolean
  	add_column :orders, :alt_ref_cost, :decimal
  end

  def down
  end
end
