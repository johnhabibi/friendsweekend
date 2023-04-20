class TravelItenerariesController < ApplicationController
  def index
    @travel_iteneraries = TravelItenerary.all
  end

  def show
    @travel_itenerary = TravelItenerary.find(params[:id])
  end
end
