class Reward < ActiveRecord::Base
	has_many :claimed_rewards
	belongs_to :vendor
end
