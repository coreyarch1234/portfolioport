class CitiesController < ApplicationController
  def index
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
      params.require.permit(:title, :description)
  end

end
