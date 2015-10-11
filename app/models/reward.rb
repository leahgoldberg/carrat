class Reward < ActiveRecord::Base

	include Curatable 
	
	has_many :claimed_rewards
	belongs_to :vendor
end
