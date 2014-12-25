class HomeController < ApplicationController
  # skip_before_filter :auth_user

  def index
    @arr_gender = ['Male','Female']
    return @arr_gender
  end

  # on login
  def show
    @profile = Profile.find(1)
    @user = User.find(current_user.id)
    @animal = Animal.find_all_by_profile_id(@profile.id)
    #@animal = Animal.find(params[:id])
  end

  def get_email()
     @db_email = User.where(email: params[:email]).first
     respond_to do |format|
       if @db_email.present? && @db_email.email == params[:email]
         format.js {}
         format.json { render json: true }
       else
         format.js
         format.json { render json: false }
       end
     end
  end

  end
