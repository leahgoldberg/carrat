class User < ActiveRecord::Base
	has_many :claimed_rewards
	has_many :completed_challenges
	has_many :transactions
end
