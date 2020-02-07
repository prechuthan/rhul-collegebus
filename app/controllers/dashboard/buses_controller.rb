class Dashboard::BusesController < ApplicationController
  before_action :authenticate_user!

  def index
    @buses = Bus.all
  end


end
