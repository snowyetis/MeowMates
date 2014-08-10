class AnimalController < ApplicationController
  before_filter :new, :only => :create

  def index
      render 'animal/index'
  end

  def new
    @arr_gender = ['Male','Female']
    @breeds = Breeds.all
    @age = ['1','2','3','4','5','6','7','8']
    @animal = Animal.new
  end

  def create
     @animal = Animal.new(params[:animal].permit(:full_name, :profile_id, :age, :gender, :purr_factor, :weight, :height,
                                                 :length, :fixed, :shots, :papers, :animal_desc, :breed_id))

    respond_to do |format|
        if @animal.save
          format.html { render "animal/index", notice: 'User was successfully created.' }
          format.json { render json: @animal, status: :created, location: @animal }
          # format.js   {}
        else
          flash[:error] = @animal.errors.full_messages
          format.html { render action: "new" }
          format.json { render json: @animal.errors, status: :unprocessable_entity }
        end
      end
  end

  def self.copy_and_delete(paperclip_file_path, raw_source)
    s3 = AWS::S3.new #create new s3 object
    destination = s3.buckets['rafflectrl'].objects[paperclip_file_path]
    sub_source = CGI.unescape(raw_source)
    sub_source.slice!(0) # the attached_file_file_path ends up adding an extra "/" in the beginning. We've removed this.
    source = s3.buckets['rafflectrl'].objects["#{sub_source}"]
    source.copy_to(destination) #copy_to is a method originating from the aws-sdk gem.
    source.delete #delete temp file.
  end

end
