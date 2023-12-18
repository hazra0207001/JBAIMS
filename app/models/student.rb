class Student < ApplicationRecord
  validates :name,:roll_no, :class_name, presence: true
end
