class RenameBreedToBreeds < ActiveRecord::Migration
  def change_table
    self.up
    rename_table :breed, :breeds
  end
end
