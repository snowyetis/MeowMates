class CreateTableAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :full_name
      t.references :profile
      t.integer :age
      t.string :gender
      t.decimal :purr_factor
      t.string :weight
      t.string :height
      t.string :length
      t.boolean :fixed
      t.boolean :shots
      t.boolean :papers
    end
  end
end
