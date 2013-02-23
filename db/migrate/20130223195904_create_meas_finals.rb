class CreateMeasFinals < ActiveRecord::Migration
  def change
    create_table :meas_finals do |t|
      t.integer :customer_id
      t.decimal :neck
      t.decimal :chest
      t.decimal :waist
      t.decimal :jacket_length
      t.decimal :shoulder_width
      t.decimal :sleeve_length
      t.decimal :sleeve_width
      t.decimal :wrist
      t.decimal :hip
      t.decimal :pants_length
      t.decimal :belt
      t.decimal :thigh
      t.decimal :knee
      t.decimal :crotch

      t.timestamps
    end
  end
end
