class CitiesController < ApplicationController
	before_action :set_city, :only => [:edit, :update, :destroy]

	def index
		@cities = City.all
		@new_city = City.new
		authorize @cities
	end

	def edit
		authorize @city
	end

	def create
		@city = City.new(city_params)
		authorize @city
		@city.save
		redirect_to :back
	end

	def update
		authorize @city
		@city.update_attributes(city_params)
		redirect_to :back
	end

	def destroy
		authorize @city
		@city.destroy
		redirect_to :back
	end


	private

	def set_city
		@city = City.find(params[:id])
	end

	def city_params
		params.require(:city).permit(:title)
	end
end
