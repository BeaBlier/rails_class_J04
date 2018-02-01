class Lesson < ApplicationRecord
  validates :title, uniqueness: true, presence:true
  validates :body, presence:true
  belongs_to :course
end
