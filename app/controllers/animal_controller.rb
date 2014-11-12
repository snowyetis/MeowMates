class AnimalController < ApplicationController
  before_filter :new, :only => :create

  def index
    @animal = Animal.limit(8).order('RANDOM()')
  end

  def new
    @arr_gender = ['Male','Female']
    @breeds = Breeds.all
    @age = ['1','2','3','4','5','6','7','8']
    @animal = Animal.new
  end

  def show
    @animal = Animal.find(params[:id])
  end

  def create

    @animal = Animal.new(animal_params)
    respond_to do |format|
        if @animal.save
          flash[:notice] = "#{@animal.full_name} has been added to your profile."
          format.json { render json: @animal, status: :created, location: @animal }
          format.html { render "animal/index" }
        else
          flash.now[:error] = @animal.errors.full_messages
          format.html { render action: "new" }
          format.json { render json: @animal.errors, status: :unprocessable_entity }
        end
      end
  end

  def get_animals()
    @animal = Animal.limit(8).order('RANDOM()')

    respond_to do |format|
      if @animal.present?
        format.js {}
        format.json { render json: @animal }
      else
        format.js {}
        flash[:error] = @animal.errors.full_messages
        format.json { render json: @animals.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  def animal_params

    params.require(:animal).permit(:full_name, :profile_id, :age, :gender, :purr_factor, :weight, :height,
                                                :length, :fixed, :shots, :papers, :animal_desc, :breed_id, :animal_image)
  end
end
