class Group < ActiveRecord::Base
	has_many :group_registrations
	has_many :users, through: :group_registrations
end
