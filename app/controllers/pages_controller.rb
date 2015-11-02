class PagesController < ApplicationController
  def home
    @spot = Spot.new
  end
end
