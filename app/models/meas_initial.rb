class MeasInitial < ActiveRecord::Base
  attr_accessible :belt_i, :chest_i, :crotch_i, :customer_id, :hip_i, :jacket_length_i, :knee_i, :neck_i, :pants_length_i, :shoulder_width_i, :sleeve_length_i, :sleeve_width_i, :thigh_i, :waist_i, :wrist_i
  belongs_to :customer

  validates :customer_id, presence: true
end
