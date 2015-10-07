class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update, :destroy]

  def index
    @profiles = Profile.all
    authorize @profiles
  end

  def show
    authorize @profile
  end

  def new
    @profile = Profile.new
    authorize @profile
  end

  def edit
    authorize @profile
  end

  def create
    @profile = Profile.new(profile_params)
    authorize @profile

    if @profile.save
      flash[:notice] = "Edwardian was created."
      render :show
    else
      flash[:error] = "Edwardian was not created, please try again."
      render :edit
    end
  end

  def update
    authorize @profile
    if @profile.update_attributes(profile_params)
      flash[:notice] = "Edwardian was updated."
      render :show
    else
      flash[:error] = "Edwardian was not updated, please try again."
      render :edit
    end
  end

  def destroy
    authorize @profile
    if @profile.destroy
      flash[:notice] = "Edwardian was deleted."
      redirect_to profiles_path
    else
      flash[:error] = "Edwardian was not deleted, please try again."
      redirect_to :back
    end
  end

  private

  def set_profile
    @profile = Profile.find(params[:id])
  end

  def profile_params
    params.require(:profile).permit(:name, :bio, :proj, :proj_url, :avatar, :site, :city_id, :industry_id)
  end
end
