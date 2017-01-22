class User < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :name, length: { minimum: 6, maximum: 16 },
                   presence: true,
                   uniqueness: true
  validates :email, presence: true,
                    length: { maximum: 255},
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: true

  has_many :posts
  has_many :comments
end
