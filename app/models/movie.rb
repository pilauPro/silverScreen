class Movie < ActiveRecord::Base
	has_many :roles
	has_many :actors, through: :roles

	validates_presence_of :title, :year
end
