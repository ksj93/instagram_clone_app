class User < ApplicationRecord
  has_many :favorites, dependent: :destroy
  has_many :feeds
  validates :name,  presence: true, length: { maximum: 30 }
  validates :email, uniqueness: true, presence: true, length: { maximum: 255 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  before_validation { email.downcase! }
  has_secure_password
  validates :password, length: { minimum: 6 }
  mount_uploader :image, ProfileImageUploader
end
