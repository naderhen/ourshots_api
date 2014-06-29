class Selfie < ActiveRecord::Base
	belongs_to :user
	belongs_to :group_shot
end
