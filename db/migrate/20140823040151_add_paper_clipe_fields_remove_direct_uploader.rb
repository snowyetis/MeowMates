class AddPaperClipeFieldsRemoveDirectUploader < ActiveRecord::Migration
  def self.up
    add_attachment :animals, :animal_image
  end

  def self.down
    remove_attach :animals, :animal_image
  end

end
