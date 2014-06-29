class GroupShot < ActiveRecord::Base
	belongs_to :group
	has_many :selfies
end
