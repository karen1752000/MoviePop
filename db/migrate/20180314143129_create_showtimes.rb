class CreateShowtimes < ActiveRecord::Migration[5.1]
  def change
    create_table :showtimes do |t|
    	t.integer :showtime

      t.timestamps
    end
  end
end
