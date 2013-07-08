class PostsController < ApplicationController
  def index
  	@Post = Post.all
  end

  def new
  	@Post = Post.create
  end
end
