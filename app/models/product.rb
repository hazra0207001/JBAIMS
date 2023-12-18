class Product < ApplicationRecord
  validates :name,:price, presence:true
  validates :serial_no, presence:true, uniqueness: true
end
