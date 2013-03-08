class UpdateBoxrequestToDate < ActiveRecord::Migration
  def change
  	remove_column :boxrequests, :request_date
  	remove_column :boxrequests, :date_sent
  	add_column :boxrequests, :request_date, :date
  	add_column :boxrequests, :date_sent, :date
  	add_column :boxrequests, :sent_from, :string
  end
end