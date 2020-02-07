class Dashboard::TimetablesController < ApplicationController

  def index
    @timetables = Timetable.all
  end

  def new
    @buses = Bus.all
    @stops = Stop.all

    @timetable = Timetable.new
  end

  def create
    @timetable = Timetable.new(timetable_params)
  end

  private
  def timetable_params
    params.require(:bus).permit(:bus_id, :departure_time, :departure_stop_id, :arrival_time, :arrival_stop_id,
                                :is_operational_weekday, :is_operational_weekend, :is_operational_term,
                                :is_operational_winter, :is_operational_easter, :is_operational_summer,)
  end
end
