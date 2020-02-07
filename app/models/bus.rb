class Bus < ApplicationRecord
  has_many :timetables

  validates :service_number, presence: true,
            uniqueness: true,
            length: { minimum: 3 }
end
