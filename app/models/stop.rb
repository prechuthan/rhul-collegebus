class Stop < ApplicationRecord
  has_many :timetables

  validates :name, presence: true,
            uniqueness: true,
            length: { minimum: 4 }
end
