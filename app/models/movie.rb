# how we connect users with their movie choices
class Movie < ApplicationRecord
	has_and_belongs_to_many :showtimes
end
