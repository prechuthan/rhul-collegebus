class Dashboard::StopsController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def new
    @stop = Stop.new
  end
end
