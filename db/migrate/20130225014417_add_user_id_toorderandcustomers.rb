class AddUserIdToorderandcustomers < ActiveRecord::Migration
  def up
  	add_column :customers, :user_id, :integer
  	add_column :orders, :user_id, :integer
  end

  def down
  end
end
