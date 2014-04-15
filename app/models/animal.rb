class Animal < ActiveRecord::Base
  belongs_to :profile

  validates :full_name, presence: true
  validates :profile_id, presence: true
  validates :age,
            presence: true,
            length: {minimum: 1, maximum: 3 }
  validates :gender,
             presence: true,
             length: {minimum: 1, maximum: 2 }
  validates :purr_factor, presence: true
  :weight
  :height
  :length
  validates :fixed, presence: true
  validates :shots, presence: true
  validates :papers, presence: true

end
