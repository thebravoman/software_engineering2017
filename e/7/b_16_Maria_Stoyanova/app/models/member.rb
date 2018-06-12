class Member < ApplicationRecord
	has_many :member_teams
	has_many :teams, through: :member_teams
	
	validates :email, uniqueness: true
	 validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create

	
end
