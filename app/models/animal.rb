class Animal < ActiveRecord::Base
  belongs_to :profile
  has_many :breeds

  validates :full_name, presence: true
  validates :profile_id, presence: true
  validates :age,
            presence: true,
            length: {minimum: 1, maximum: 3 }
  validates :gender,
             presence: true,
             length: {minimum: 4, maximum: 6 }
             :purr_factor
             :weight
             :height
             :length
  validates :fixed, presence: true
  validates :shots, presence: true
  validates :papers, presence: true
            #:image_uid
  validates :animal_desc, presence: true
            :breed_id

  has_attached_file :attached_file,
    :storage => :s3,
      :s3_credentials => "#{Rails.root}/config/aws.yml",
      :path => ":class/:attachment/:id/:style/:filename",
      :url => ':s3_domain_url'

end
