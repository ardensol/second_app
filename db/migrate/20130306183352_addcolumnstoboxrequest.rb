class Addcolumnstoboxrequest < ActiveRecord::Migration
  def up
  	add_column :boxrequests, :shipping_number, :string
  end

  def down
  end
end
