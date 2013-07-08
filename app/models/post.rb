class Post < ActiveRecord::Base
  belongs_to :blog
  belongs_to :user
  attr_accessible :content, :title

  validates :content, presence: true
  validates	:title, presence: true, length: {minimum: 7}
  has_many :messages, dependent: :destroy
  has_many :comments, as: :commentable
end
