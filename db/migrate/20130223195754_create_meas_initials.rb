class CreateMeasInitials < ActiveRecord::Migration
  def change
    create_table :meas_initials do |t|
      t.integer :customer_id
      t.decimal :neck_i
      t.decimal :chest_i
      t.decimal :waist_i
      t.decimal :jacket_length_i
      t.decimal :shoulder_width_i
      t.decimal :sleeve_length_i
      t.decimal :sleeve_width_i
      t.decimal :wrist_i
      t.decimal :hip_i
      t.decimal :pants_length_i
      t.decimal :belt_i
      t.decimal :thigh_i
      t.decimal :knee_i
      t.decimal :crotch_i

      t.timestamps
    end
  end
end
