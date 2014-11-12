class AddAnimalDescToAnimalsTable < ActiveRecord::Migration
  def change
    self.up
      add_column :animals, :animal_desc, :text
  end
end
