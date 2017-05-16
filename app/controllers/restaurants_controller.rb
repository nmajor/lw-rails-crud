class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def index         # GET /restaurants
    @restaurants = Restaurant.all
  end

  def show          # GET /restaurants/:id
    # params[:id]
  end

  # Display the form
  def new           # GET /restaurants/new
    @restaurant = Restaurant.new
  end

  # Process the form
  def create        # POST /restaurants
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save

    redirect_to restaurant_path(@restaurant)
  end

  def edit          # GET /restaurants/:id/edit
  end

  def update        # PATCH /restaurants/:id
    @restaurant.update(restaurant_params)
    @restaurant.save

    redirect_to restaurant_path(@restaurant)
  end

  def destroy       # DELETE /restaurants/:id
    @restaurant.destroy

    redirect_to restaurants_path
  end

  private

  # Strong params for security reasons
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :rating)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end




















