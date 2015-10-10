class Reward < ActiveRecord::Base
	has_many :claimed_rewards
end
