class Product < ApplicationRecord
  belongs_to :type
  validates :name,:price, presence:true
  validates :serial_no, presence:true, uniqueness: true
  validates :unit, numericality: { greater_than: 0}
  has_many_attached :images
end
