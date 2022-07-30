class RestaurantsController < ApplicationController
  def index
    if params[:query]
      @restaurants = Restaurant.where("name ILIKE ?", "%#{params[:query]}%")
    else
      @restaurants = Restaurant.all
    end
  end


  def update_search
    @restaurants = Restaurant.where("name ILIKE ?", "%#{params[:query]}%")
    respond_to do |format|  
      format.json
    end
  end
end
