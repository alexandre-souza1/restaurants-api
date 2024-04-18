class Api::V1::RestaurantsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @restaurants = policy_scope(Restaurant)
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    authorize @restaurant
  end
end
