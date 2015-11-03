class Movie < ActiveRecord::Base
	has_many :roles
	has_many :actors, through: :roles
	has_attached_file :image

	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]
	validates_presence_of :title, :year
end
