class CreateBreedsTable < ActiveRecord::Migration
  def change
    create_table :breeds do |t|
      t.string :breed_name
      t.string :bred_desc
      t.string :breed_desc
      t.datetime :created_date
      t.datetime :updated_date
    end
  end
end
