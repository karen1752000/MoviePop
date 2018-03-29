# where we are going to utilize the Tmdb gem via their Api.key
class WelcomeController < ApplicationController
  def index
  	Tmdb::Api.key(ENV["TMDB_API_KEY"])
  	@whatever = Tmdb::Movie.now_playing

  end
end
