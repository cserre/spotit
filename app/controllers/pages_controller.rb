class PagesController < ApplicationController
  def home
    @spot = Spot.new
    @spots = Spot.all
  end
end
