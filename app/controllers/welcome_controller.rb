class WelcomeController < ApplicationController
  def index
  	Tmdb::Api.key(ENV["TMDB_API_KEY"])
  	@whatever = Tmdb::Movie.find('The Avengers')
  end
end
