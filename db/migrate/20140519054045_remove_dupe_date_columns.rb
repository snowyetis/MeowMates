class RemoveDupeDateColumns < ActiveRecord::Migration
  def change
    self.down
    remove_column :breeds, :created_date
    remove_column :breeds, :updated_date
  end
end
