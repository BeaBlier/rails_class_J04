class Post < ApplicationRecord
  validates :title, uniqueness: true, presence: true
  validates :body, presence: true
  validates :author_id, presence: true
  belongs_to :author
end
