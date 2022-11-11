class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user, optional: true
  belongs_to :parent,  class_name: "Comment" , optional: true
  has_many   :replies, class_name: "Comment", foreign_key: :parent_id, dependent: :destroy
  validates  :author, presence: true

  before_create do
    puts post.valid?
    puts "yes, this is a valid post "
    end
end
