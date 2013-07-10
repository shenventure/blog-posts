class UsersController < ApplicationController
  def index
  	@User = User.all
  end

  def new
  	@User = User.new
  end

  def create
  	@User = User.new(params[:user])
  	if @User.save
  		flash[:success] = "User has been successfully created!"
  		redirect_to @User
  	else
  		flash.now[:errors] = @User.errors.full_messages
  		flash.keep
  		@errors = @User.errors.full_messages
  		render action: "new"
  	end		
  end

  def show
  	@show_user = User.find(params[:id])
  end	

  def edit
  	@edit_user = User.find(params[:id])
  	# @first_name = User.find(params[:first_name])
  end

  def update
  	@User = User.find(params[:id])

  	if @User.update_attributes(params[:user])
  		flash[:message] = "User has been sucessfully updated."
  		redirect_to @User, notice: "User updated!"
  	else
  		render @User	
  	end
  end	

  def destroy
  	@User = User.find(params[:id])

  	if @User.destroy
  	  redirect_to "/users", notice: "User #{@User.first_name} #{@User.last_name} has been deleted."
  	end
  end

end
