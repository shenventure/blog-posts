class Message < ActiveRecord::Base
  belongs_to :post
  belongs_to :user
  attr_accessible :author, :message

  has_many :comments, as: :commentable
end
