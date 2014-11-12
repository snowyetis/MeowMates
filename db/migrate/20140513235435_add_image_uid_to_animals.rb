class AddImageUidToAnimals < ActiveRecord::Migration
  def self.up
    change_table(:animals) do |t|
      add_column :animals, :image_uid, :string
    end
  end

  def self.down
    change_table(:animals) do |t|
      remove_column :animals, :image_uid, :string
    end
  end

end
