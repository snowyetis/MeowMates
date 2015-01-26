class Profile < ActiveRecord::Base
  belongs_to :user
  has_one  :user
  has_many :animals

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip, presence: true
  validates :country, presence: true
  validates :gender,
            presence: true,
            length: {minimum: 1, maximum: 2 }
  validates :birth_date, presence: true
  validates :breeder, presence: true
            :user_id
            :month
            :year

end