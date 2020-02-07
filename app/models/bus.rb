class Bus < ApplicationRecord
  validates :service_number, presence: true,
            uniqueness: true,
            length: { minimum: 3 }
end
