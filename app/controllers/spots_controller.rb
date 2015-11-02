class SpotsController < ApplicationController
  before_action :set_spot, only: [:show, :edit]
  before_action :set_params, only: [:index]

  def index
    @spots = Spot.all
    @spot = Spot.new
  end

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
    id = params[:spot_id] || params[:id]
    @spot = Spot.find(id)
  end
  def set_params
    @city = params[:city]
    @style = params[:style]
    @price = params[:price]
    @area = params[:area]
    @exceptional_view = params[:exceptional_view]
    @modular_furniture = params[:modular_furniture]
    @exposition = params[:exposition]
    @params = params
  end
  def spot_params
    params.require(:spot).permit(:title, :address, :description, :price, :user_id,
      :visible, :city, :style, :post_code, :area, :exposition, :exceptional_view,
      :modular_furniture)
  end
end
