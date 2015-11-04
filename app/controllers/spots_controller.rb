class SpotsController < ApplicationController

  before_action :set_spot, only: [:show, :edit]
  before_action :set_params, only: [:index]

  def index
    @spots = Spot.all
  end

  def show
  end

  def new
    @spot = Spot.new
  end

  def create
    @spot = Spot.create(spot_params)
    redirect_to edit_spot_path(@spot)
  end

  def edit
  end

  def update
  end

  private
  def set_spot
    id = params[:spot_id] || params[:id]
    @spot = Spot.find(id)
  end
  def set_params
    @params = params
  end
  def spot_params
    params.require(:spot).permit(:title, :address, :description, :price, :user_id,
      :visible, :city, :style, :post_code, :area, :exposition, :exceptional_view,
      :modular_furniture)
  end
end
