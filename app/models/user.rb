class User < ActiveRecord::Base
  # S3 stuff
  has_attached_file :avatar, :styles => { :medium =>  '300x300>', :thumb => '100x100>'}, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  # Devise model
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # When a user account is deleted, destroy profile
  has_one :profile

  accepts_nested_attributes_for :profile

  validates :email, presence: true
  validates :password, presence: true
  validates :password_confirmation, presence: true
  :created_at
  :last_sign_in_at
  :profile_id

end