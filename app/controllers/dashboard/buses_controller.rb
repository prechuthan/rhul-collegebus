class Dashboard::BusesController < ApplicationController
  before_action :authenticate_user!

  def index
    @buses = Bus.all
  end

  def new
    @bus = Bus.new
  end

  def create
    @bus = Bus.new(bus_params)

    if @bus.save
      redirect_to dashboard_buses_path
    else
      render `new`
    end
  end

  private
  def bus_params
    params.require(:bus).permit(:service_number)
  end
end
