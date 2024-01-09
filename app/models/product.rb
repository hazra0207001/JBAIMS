class Product < ApplicationRecord
  belongs_to :type
  validates :name,:price, presence:true
  validates :serial_no, presence:true, uniqueness: true
  validates :unit, numericality: { greater_than: 0}
  has_many_attached :images
  def total_price
    price*unit
  end
  def warranty_expiration_date
     if purchase_date.present?
         warranty_expiration_date = purchase_date + warranty.years
      return warranty_expiration_date
    else
      return nil
    end
  end
end
