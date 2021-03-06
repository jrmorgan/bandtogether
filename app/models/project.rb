class Project < ActiveRecord::Base
	has_many :memberships
	has_many :users, through: :memberships

	validates :users, presence: true
end
