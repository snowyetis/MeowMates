class AddProfileRefToUsers < ActiveRecord::Migration
  def self.up
    add_reference :users, :profile_id
  end

  def self.down
    remove_reference :users, :profile_id
  end
end
