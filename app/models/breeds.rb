class Breeds < ActiveRecord::Base
  belongs_to :animal

  validates  :breed_id, presence: true
  validates  :breed_name, presence: true
  :breed_desc
  :breed_disorder
  validates :created_date, presence: true
  :updated_date

end
