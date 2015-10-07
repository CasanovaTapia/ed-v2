class IndustriesController < ApplicationController
	before_action :set_industry, :only => [:edit, :update, :destroy]

	def index
		@industries = Industry.all
		@new_industry = Industry.new
		authorize @industries
	end

	def edit
		authorize @industry
	end

	def create
		@industry = Industry.new(industry_params)
		authorize @industry
		@industry.save
		redirect_to :back
	end

	def update
		authorize @industry
		@industry.update_attributes(industry_params)
		redirect_to :back
	end

	def destroy
		authorize @industry
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
