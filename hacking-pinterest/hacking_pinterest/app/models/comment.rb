class Comment < ApplicationRecord
  validates :body, uniqueness: true, presence: true,
  validates :user_id, uniqueness: true, presence: true
  validates :pin_id, uniqueness: true, presence: true

  belongs_to :user
  belongs_to :pin 

end
