class User < ActiveRecord::Base
  has_one :profile
  belongs_to :profile

  validates :username, presence: true
  validates :email, presence: true
  validates :password, presence: true
  validates :password_confirmation, presence: true
  :profile_id
end