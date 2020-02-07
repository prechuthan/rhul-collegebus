class Dashboard::StopsController < ApplicationController
  before_action :authenticate_user!

  def index
    @stops = Stop.all
  end

  def new
    @stop = Stop.new
  end

  def create
    @stop = Stop.new(stop_params)

    if @stop.save
      redirect_to dashboard_stops_path
    else
      render `new`
    end
  end

  private
    def stop_params
      params.require(:stop).permit(:name)
    end
end
