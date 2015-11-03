class Role < ActiveRecord::Base
  belongs_to :movie
  belongs_to :actor

  validates_presence_of :movie, :actor
end
