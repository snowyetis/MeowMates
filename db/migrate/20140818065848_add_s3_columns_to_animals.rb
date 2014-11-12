class AddS3ColumnsToAnimals < ActiveRecord::Migration
  def self.up
    add_column :animals, :direct_upload_url, :string
    add_column :animals, :attached_file_file_name, :string
    add_column :animals, :attached_file_file_size, :string
    add_column :animals, :attached_file_content_type, :string
    add_column :animals, :attached_file_file_path, :string
  end
end
