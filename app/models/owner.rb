class Owner < ActiveRecord::Base
	validates :name, presence: true
	has_many :projects
	validates_inclusion_of :rating, in: 1..10
end
