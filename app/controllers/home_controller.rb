class HomeController < ApplicationController
  def index
  	@cuis = Cuisine.order("RANDOM()").limit(2)
  	@cat = Category.order("RANDOM()").limit(4)
  	@booking = Booking.new
  end
end
