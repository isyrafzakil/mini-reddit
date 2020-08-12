class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :link

  validates :body, presence: true
  validates :body, length: { maximum: 200 }
  validates :body, length: { minimum: 1 }

end
