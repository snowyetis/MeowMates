class ChangeIdToBreedIdInBreeds < ActiveRecord::Migration
  def change_column
    rename_column :breeds, :id, :breed_id
  end
end
