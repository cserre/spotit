class SpotsController < ApplicationController

  before_action :set_spot, only: [:show, :edit]
  before_action :set_params, only: [:index]

  def index
    @spots = Spot.all

    @spots_selected = Spot.all.where(visible: true)

    if !(@params["city"].nil? || @params["city"] == "")
      @spots_selected = @spots_selected.where("city = ?", @params["city"].capitalize)
    end
    if !(@params["price"].nil? || @params["price"] == "")
      @spots_selected = @spots_selected.where("price <= ?", @params["price"].to_i)
    end
    if !(@params["style"].nil? || @params["style"] == "")
      @spots_selected = @spots_selected.where("style = ?", @params["style"].capitalize)
    end
    if !(@params["area"].nil? || @params["area"] == "")
      @spots_selected = @spots_selected.where("area >= ?", @params["area"].to_i)
    end
    if !(@params["exceptional_view"].nil? || @params["exceptional_view"] == "") \
      && @params["exceptional_view"] == "on"
      @spots_selected = @spots_selected.where("exceptional_view = ?", true)
    end
    if !(@params["exposition"].nil? || @params["exposition"] == "") \
      && @params["exposition"] == "on"
      @spots_selected = @spots_selected.where("exposition = ?", true)
    end
    @spots_selected = @spots_selected.page params[:page]

    # if @spots_selected
    #   @message = "No result found."
    #   if !(@params["city"].nil? || @params["city"] == "")
    #     @spots_selected = Spot.all.where("city = ?", @params["city"].capitalize).page params[:page]
    #   else
    #     @spots_selected = Spot.all.page params[:page]
    #   end
    # else
    #   @spots_selected = @spots_selected.page params[:page]
    # end
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
