class CreateDates < ActiveRecord::Migration
  def change
    create_table :dates do |t|
      t.integer :month
      t.integer :year

      t.timestamps
    end
  end
end
