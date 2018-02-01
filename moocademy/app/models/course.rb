class Course < ApplicationRecord
  validates :title, uniqueness: true, presence: true
  validates :description, uniqueness: true, presence: true
  has_many :lessons
end
