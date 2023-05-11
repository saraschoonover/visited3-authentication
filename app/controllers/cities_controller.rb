class CitiesController < ApplicationController
  #before_action :set_user, only: [:new, :create]

  def index
    @cities = City.where(user_id: current_user.id)
    @cities = City.all.order(country: :asc)
  end

  def show
    @city = City.find(params[:id])

  end

  def new
    @city = City.new
  end

  def create
    @city = City.new(city_params)
    @city.user = current_user
    @city.save
    redirect_to city_path(@city)
  end

  def edit
    # @city = City.find(params[:id])
    set_cities
  end

  def update
    set_cities
    @city.update(city_params)
    redirect_to city_path(@city)
  end

  def destroy
    set_cities
    @city.destroy
    redirect_to cities_index_path, status: :see_other
  end

  private

  def city_params
    params.require(:city).permit(:name, :country, :continent, :neighborhood_name, :park_name, :coffeeshop_name, :string, :restaurant_name, :id)
  end

  def set_cities
    @city = City.find(params[:id])
  end


  def set_user
   # raise
    @user = User.find(params[:id])
  end

end
