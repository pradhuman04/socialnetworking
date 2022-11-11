class Post < ApplicationRecord
  belongs_to :user
  has_many   :comments, dependent: :destroy

  scope      :created_at, -> { where("created_at < ?",Time.now)} 
  scope      :recent_post, ->(val) {order('id desc').limit(val)}

  validates  :body, :author, presence: true

  before_create do
    puts Post.column_names
  end

  after_create do
    puts author
  end
end
