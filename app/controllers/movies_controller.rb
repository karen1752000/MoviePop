class MoviesController < ApplicationController
	def show
		@movie =Movie.all
		@showtimes= Showtime.all
	end




private

def movie_params 
	params.require(:movie).permit[:name, :genre, :year]
 end
end
