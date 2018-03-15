class UsersController < ApplicationController
	
  before_action :authenticate_user!, only: [:create]
  
  def show
    
    end


def edit
	end

	def destroy
	end

    
    