class Pin < ApplicationRecord
  validates :url, uniqueness: true, presence: true,
  validates :user_id, uniqueness: true, presence: true
  has_many :comments through :user 
  belongs_to :user
end
