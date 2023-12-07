class Employee < ApplicationRecord
  validates :first_name,:last_name, :designation, :plase_of_posting, :address, presence: true
  validates :bank_id, :email, presence: true, uniqueness: true
  def name
    "#{first_name} #{middle_name} #{last_name}".strip
  end


end
