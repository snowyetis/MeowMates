class AddBreedIdToAnimals < ActiveRecord::Migration
  def change
    add_column :animals, :breed_id, :integer
  end
end
