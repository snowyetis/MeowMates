class HomeController < ApplicationController
  # skip_before_filter :auth_user

  def index
    @arr_gender = ['Male','Female']
    return @arr_gender
  end

  def show
    @animal = Animal.find(params[:id])
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
