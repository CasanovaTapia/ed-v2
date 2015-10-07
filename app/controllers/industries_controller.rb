class IndustriesController < ApplicationController
	before_action :set_industry, :only => [:edit, :update, :destroy]

	def index
		@industries = Industry.all
		@new_industry = Industry.new
	end

	def edit
	end

	def create
		@industry = Industry.new(industry_params)
		@industry.save
		redirect_to :back
	end

	def update
		@industry.update_attributes(industry_params)
		redirect_to :back
	end

	def destroy
		@industry.destroy
		redirect_to :back
	end

	private

	def set_industry
		@industry = Industry.find(params[:id])
	end

	def industry_params
		params.require(:industry).permit(:title)
	end
end
