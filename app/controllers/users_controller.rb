class UsersController < ApplicationController
  def index
  	@Users = User.all
  end

  def new
  	@User = User.create
  end
end
