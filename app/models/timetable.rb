class Timetable < ApplicationRecord
  belongs_to :bus
  belongs_to :departure_stop, class_name: "Stop"
  belongs_to :arrival_stop, class_name: "Stop"

  validates :departure_time, presence: true
  validates :arrival_time, presence: true

end
