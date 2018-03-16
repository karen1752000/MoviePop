class WelcomeController < ApplicationController
  def index
  	authenticate_user!
  	Tmdb::Api.key(ENV["TMDB_API_KEY"])
  	@whatever = Tmdb::Movie.now_playing

  end
end
