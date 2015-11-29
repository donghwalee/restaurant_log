class RestaurantsController < ApplicationController

  before_action :require_current_user

  def index
    @restaurants = current_user.restaurants
  end

  def create
    @restaurant = current_user.restaurants.new(restaurant_params)

    if @restaurant.save
      
    else
      render json: {
        error: {
          message: @restaurant.errors.full_messages.to_sentence
        }
      }
    end
  end

  # def new
  #   @restaurant = Restaurant.new
  # end
  #
  # def create
  #   @restaurant = current_user.restaurants.new(restaurant_params)
  #
  #   if @restaurant.save
  #     redirect_to restaurants_path
  #   else
  #     flash[:message] = @restaurant.errors.full_messages.to_sentence
  #     render :new
  #   end
  #
  # end
  #
  # def edit
  # end
  #
  # def show
  # end
  #
  # def index
  #   @restaurants = current_user.restaurants
  # end
  #
  # def delete
  # end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :rest_type, :address, :dined_at, :rating, :comments)
  end


end
