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
            :fixed
            :shots
            :papers
            :animal_image_content_type
            :animal_image_file_name
  validates :animal_desc,
            presence: true,
            length: {minimum: 140 }
            :breed_id

  has_attached_file :animal_image,
                    :style => {:medium => "300x300>", :thumb => "100x100>"},
                    :storage => :s3,
                    :bucket  => "purrrbucket",
                    :s3_credentials => {
                        :bucket  => "purrrbucket",
                        :access_key_id => ENV["access_key_id"],
                        :secret_access_key => ENV["secret_access_key"]
                    },
                    :s3_permissions => "private",
                    :url => ":s3_domain_url"
                    Paperclip::Attachment.default_options[:url] = ":s3_domain_url"
                    Paperclip::Attachment.default_options[:path] = "/:class/:attachment/:id_partition/:style/:filename"

  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :animal_image, :content_type => /\Aimage\/.*\Z/

end
