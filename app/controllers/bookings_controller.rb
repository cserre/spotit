class BookingsController < ApplicationController
  before_action :set_spot, only: [:new, :create,:show, :edit, :update]
  before_action :set_booking, only: [:show, :edit, :update, :delete]

  def show

  end

  def new
    @booking = Booking.new()
  end

  def create
    @booking = Booking.new(spot_params)
    @booking.spot = @spot
    # @booking.total_price = @spot.price *(@booking.start_time-@booking.end_time)
    if @booking.save
      render :show
    else
      redirect_to spot_path(@spot)
    end
  end


  def edit
  end

  def update
    @booking.update(params[:id])
  end

  def delete
    @booking.delete
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
    params.require(:booking).permit(:start_time, :end_time, :spot_id, :user_id, :total_price)
  end

end

