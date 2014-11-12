class RenameBredToBreedBreedsTable < ActiveRecord::Migration
  def change
    self.up
    rename_column :breeds,:bred_desc, :breed_desc
  end
end
