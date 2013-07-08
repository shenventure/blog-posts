class User < ActiveRecord::Base
  attr_accessible :email_address, :first_name, :last_name

  validates :first_name, :last_name, :email_address, presence: true
  has_many :owners, dependent: :destroy
  has_many :posts, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :blogs, through: :owners
  has_many :comments, as: :commentable
end
