class Customer < ActiveRecord::Base
  attr_accessible :address, :called, :delivered, :email, :height, :name, :phonenumber, :weight, :meas_initial_attributes
  has_one :meas_initial, dependent: :destroy
  has_one :meas_final, dependent: :destroy
  has_many :orders
  belongs_to :user
  accepts_nested_attributes_for :meas_initial
end
