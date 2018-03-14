class UsersController < ApplicationController
	
  before_action :authenticate_user!, only: [:create]
  
  def show
  	users =User.find_by_id(params[:id])
   end
end

    
