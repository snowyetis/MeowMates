class CreateBreeds < ActiveRecord::Migration
  def change
    create_table :breeds do |t|
      t.string :breed_name
      t.string :bred_desc
      t.string :breed_disorder
      t.datetime :created_date
      t.datetime :updated_date

      t.timestamps
    end
  end
end
