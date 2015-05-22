class User < ActiveRecord::Base
	validates :name, presence: true
	validates_uniqueness_of :username
	validates_length_of :username, within: 3..20
	has_many :investments
end
