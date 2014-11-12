class AddAttachmentAnimalImageToAnimals < ActiveRecord::Migration
  def self.up
    change_table :animals do |t|
      t.attachment :animal_image
    end
  end

  def self.down
    drop_attached_file :animals, :animal_image
  end
end
