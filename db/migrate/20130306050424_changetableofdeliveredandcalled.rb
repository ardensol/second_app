class Changetableofdeliveredandcalled < ActiveRecord::Migration
  def up
  	remove_column :customers, :delivered
  	remove_column :customers, :called
  	add_column :orders, :delivered, :boolean
  	add_column :orders, :called, :boolean
  end

  def down
  end
end
