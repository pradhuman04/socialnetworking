class User < ApplicationRecord
	has_many  :posts, dependent: :destroy
	has_many  :comments, dependent: :destroy
	# validates :email, :password, presence: true, fornat:  [with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i],uniqueness: { case_sensitive: false }
	validates :first_name, :last_name, presence: true
end
