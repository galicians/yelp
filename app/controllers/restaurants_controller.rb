class RestaurantsController < ApplicationController

	def index
		@restaurants = Restaurant.all
	end

	def new
		@restaurant = Restaurant.new
  	end

  	def create
	    @restaurant = Restaurant.create(params[:restaurant].permit(:name))
	    redirect_to '/restaurants'
  	end

# This method gets called when you go to /restaurants/:restaurant_id, and uses
# the ID passed in the URL to look up the correct record from the database.

  	def show
  		@restaurant =  Restaurant.find(params[:id])
  	end


end
