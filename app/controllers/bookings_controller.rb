class BookingsController < ApplicationController
  before_action :set_spot, only: [:show, :edit]
  before_action :set_booking, only: [:show, :edit]

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  private
  def set_spot
    id = params[:spot_id]
    @spot = Spot.find(id)
  end
  def set_booking
    id = params[:id]
    @spot = Spot.find(id)
  end

  def spot_params
    params.require(:booking).permit(:start_time, :end_time, :spot_id, :user_id)
  end
end

