class Actor < ActiveRecord::Base
	has_many :roles
	has_many :movies, through: :roles
	validates_presence_of :fname, :lname

	def last_name_first
		"#{lname}, #{fname}"
	end
	def first_name_first
		"#{fname} #{lname}"
	end
end
