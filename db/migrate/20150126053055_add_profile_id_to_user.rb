class AddProfileIdToUser < ActiveRecord::Migration
    def self.up
      add_column :profiles, :user_id, :integer
    end

end
