class CreateProfilesTable < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :country
      t.string :gender
      t.datetime :birth_date
      t.boolean :breeder
    end
  end
end
