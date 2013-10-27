class ProfilesController < ApplicationController
  #before_filter :authenticate_user!

  def new
    @profile = Profile.new
  end

  def create
    @profile = current_user.build_profile(profile_params)
    if @profile.save
        flash[:success] = 'You have successfully completed your registration. Welcome to BuzzyGals'
        redirect_to own_profile_path
    else
        render 'new'
    end
  end

  def show
    @pagetitle = 'My Profile'
  end

  def edit

  end

  def update

  end

  private

    def profile_params
        params.require(:profile).permit(:firstname, :lastname, :displayname, :gender, :dob, :about)
    end
end
