class TagsController < ApplicationController
	before_action :set_profile, :except => [ :index ]

	def index
		@tags = Tag.all
	end

	def create
		@tag = @profile.tags.new(tag_params)
		@tag.user = current_user

		authorize @tag
		if @tag.save
			flash[:notice] = "Edwardian was tagged."
			redirect_to :back
		else
			flash[:error] = "Tag not saved, please try again."
			redirect_to :back
		end
	end

	def destroy
		@tag = Tag.find(params[:id])
		authorize @tag
		if @tag.destroy
			flash[:notice] = "Tag deleted."
			redirect_to :back
		else
			flash[:error] = "Tag not deleted, please try again."
			redirect_to :back
		end
	end

	private

	def set_profile
		@profile = Profile.find(params[:profile_id])
	end

	def tag_params
		params.require(:tag).permit(:body)
	end
end
