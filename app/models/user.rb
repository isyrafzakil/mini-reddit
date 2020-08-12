class User < ApplicationRecord
	has_many :links
	has_many :comments

	validates :username, presence: true, length: { maximum: 20 }, uniqueness: true
    validates :email, presence: true, uniqueness: true, format: /\w+@\w+\.{1}[a-zA-Z]{2,}/
    validates :password, presence: true, length: { in: 6..20 }

end
