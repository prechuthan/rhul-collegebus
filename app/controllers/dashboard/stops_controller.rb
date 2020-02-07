class Dashboard::StopsController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def new
    @stop = Stop.new
  end

  def create
    render plain: params[:stop].inspect
  end

  private
    def stop_params
      params.require(:stop).permit(:name)
    end
end
