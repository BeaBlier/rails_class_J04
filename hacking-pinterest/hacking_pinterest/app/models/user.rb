class User < ApplicationRecord
  validates :username, uniqueness: true, presence: true
  validates :password, uniqueness: true, presence: true
  has_many :pins
  has_many :comments
end
