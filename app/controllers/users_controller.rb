class UsersController < ApplicationController
def new
	@user = User.new
end
# // building a new guest & that's going to be a class method on the user.model so we can have all of this one place
# //clear
def create
	@user = params[:user] ? User.new(params[:user]) : User.new_guest
	if @user.save
		current_user.move_to(@user) if current_user && current_user.guest?
		session[:user_id] = @user.id
		redirect_to root_url
	else
		render "new"
		end
	end
end
# //clear
