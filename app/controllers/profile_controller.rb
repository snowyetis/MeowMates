class ProfileController < ApplicationController
before_filter :new, only => :create
  def new
    @profile = Profile.new
  end

  def create
    @user = User.new(params[:profile].permit(:first_name, :last_name, :gender, :birth_date,
                                             :address, :city, :state, :zip, :country, :breeder))
    if @profile.save
      render 'animal/animal'
    else
        redirect_to new
    end
  end

end
