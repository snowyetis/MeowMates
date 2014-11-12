class AddAttachmentAvatarToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      add_attachment :users, :avatar
    end
  end

  def self.down
    remove_attachment :users, :avatar
  end
end
