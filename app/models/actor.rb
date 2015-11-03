class Actor < ActiveRecord::Base
	has_many :roles
	has_many :movies, through: :roles
	validates_presence_of :fname, :lname

	def full_name
		"#{lname}, #{fname}"
	end
end
