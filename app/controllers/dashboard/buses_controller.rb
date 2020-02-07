class Dashboard::BusesController < ApplicationController
  before_action :authenticate_user!

  def index
    @buses = Bus.all
  end

  def new
    @bus = Bus.new
  end

end
