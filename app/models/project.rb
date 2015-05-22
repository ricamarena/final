class Project < ActiveRecord::Base
	validates :name, presence: true
	belongs_to :owner
	has_many :investments
end