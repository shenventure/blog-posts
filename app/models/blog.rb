class Blog < ActiveRecord::Base
  attr_accessible :description, :name

  validates :name, :description, presence: true
  has_many :posts, dependent: :destroy
  has_many :owners, dependent: :destroy
  has_many :users, through: :owners
  has_many :comments, as: :commentable
end
