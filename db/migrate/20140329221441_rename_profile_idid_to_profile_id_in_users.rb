class RenameProfileIdidToProfileIdInUsers < ActiveRecord::Migration
  def self.up
    rename_column :users, :profile_id_id, :profile_id
  end
end
