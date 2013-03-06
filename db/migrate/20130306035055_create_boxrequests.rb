class CreateBoxrequests < ActiveRecord::Migration
  def change
    create_table :boxrequests do |t|
      t.integer :customer_id
      t.string :requesttype
      t.string :request_date
      t.string :date_sent
      t.boolean :followed_up

      t.timestamps
    end
  end
end
