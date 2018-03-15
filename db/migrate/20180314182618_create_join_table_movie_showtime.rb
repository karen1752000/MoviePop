class CreateJoinTableMovieShowtime < ActiveRecord::Migration[5.1]
  def change
    create_join_table :movies, :showtimes do |t|
       t.index [:movie_id, :showtime_id]
      t.index [:showtime_id, :movie_id]
    end
  end
end
