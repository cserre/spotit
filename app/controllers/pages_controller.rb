class PagesController < ApplicationController
  def home
    @spot = Spot.new
    @allspot = Spot.all
  end
end
