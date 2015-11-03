class Actor < ActiveRecord::Base
	has_many :roles
	has_many :movies, through: :roles

	validates_presence_of :fname, :lname
end
