class Dashboard::TimetablesController < ApplicationController

  def index
    @timetables = Timetable.all
  end

end
