class BookingsController < ApplicationController
  before_action :set_spot, only: [:new, :show, :edit]
  before_action :set_booking, only: [:show, :edit]

  def show

  end

  def new
    @booking = Booking.new()
  end

  def create

    @spot = Spot.find(params[:spot_id])
    @booking = Booking.new(spot_params)
    @booking.spot = @spot
    n = (@booking.end_time - @booking.start_time)/(365*60*60).to_i
    @booking.total_price = n*@spot.price
    if @booking.save
      render :new
    else
      render :new
    end
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
    @booking = @spot.booking.find(id)
  end

  def spot_params
    params.require(:booking).permit(:start_time, :end_time, :spot_id, :user_id)
  end

end

