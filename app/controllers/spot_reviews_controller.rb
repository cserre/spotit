class SpotReviewsController < ApplicationController

  before_action :set_spot, only: [:show, :edit, :update]
  before_action :set_params, only: [:index, :new]
  before_filter :store_location
  before_action :authenticate_user!

  def index
    @all_reviews = Review.all
    @spot_reviews = @all_reviews.where(spot_id: @spot.id)
  end

  def show
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)

    if @review.save
      redirect_to spot_path(@spot)
    else
      render spot_path(@spot)
    end
  end

  def edit
  end

  def update
    if @review.update(review_params)
      redirect_to root_path
    else
      render :edit
    end
  end


  private
  def set_spot
    id = params[:spot_id] || params[:id]
    @spot = Spot.find(id)
  end
  def set_params
    @params = params
  end
  def review_params
    params.require(:review).permit(:rating, :comment, :user_id, :spot_id)
  end

end
