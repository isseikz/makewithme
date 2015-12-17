class ProfilesController < ApplicationController
  def index
    @profile = Profile.find_by(user_id: current_user.id)
    if @profile.blank?
      redirect_to new_profile_path
    end 
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile= Profile.new(profile_params)
    if @profile.save
      redirect_to :action => 'index'
    else
      redirect_to :alert => 'unknown error'
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def profile_params
      params.require(:profile).permit(:name, :favorite => []).merge(user_id: current_user.id)
    end
end
