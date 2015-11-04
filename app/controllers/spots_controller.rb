class SpotsController < ApplicationController

  before_action :set_spot, only: [:show, :edit]
  before_action :set_params, only: [:index]
  before_action :authenticate_user!
  skip_before_action :authenticate_user!, only: [:index, :show, :new]

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
    @spots_total_number = @spots_selected.length
    @spots_selected = @spots_selected.page params[:page]

    @markers = Gmaps4rails.build_markers(@spots_selected) do |spot, marker|
      marker.lat spot.latitude
      marker.lng spot.longitude
      # marker.picture({
      #   :url => ActionController::Base.helpers.asset_path('marker.png'),#{ }"http://placehold.it/30x30",
      #   :width   => 28,
      #   :height  => 35
      #  })
    end
  end

  def show
  end

  def new
    @spot = Spot.new
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
    @params = params
  end
  def spot_params
    params.require(:spot).permit(:title, :address, :description, :price, :user_id,
      :visible, :city, :style, :post_code, :area, :exposition, :exceptional_view,
      :modular_furniture)
  end
end
