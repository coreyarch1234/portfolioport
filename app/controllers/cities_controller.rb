class CitiesController < ApplicationController
  def index
    #   Won't have anything to do with any other model except to display the front_cities page
      @cities = City.all
  end

  def show
      @cities = City.find(params[:id])
  end

  def new
      @city = City.new
  end

  def create
      @city = City.create(city_params)
      redirect_to(action: 'show', id: @city.id)
  end

  private

  def city_params
      params.require(:city).permit(:title, :description)
  end

end
