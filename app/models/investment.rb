class Investment < ActiveRecord::Base
	belongs_to :user
	belongs_to :project
	validates :amount, presence: true
	validates :user_id, presence: true
	validates :project_id, presence: true
end
