class UsersController < ApplicationController
	
   before_action :authenticate_user!, only: [:create]
  
  def index
  	end
  end