class User < ActiveRecord::Base
	has_many :claimed_rewards
	has_many :completed_challenges
	has_many :transactions
  has_many :notifications

	def preferred_brands
		transactions.group('vendor').order('count_id desc').count('id').map {|k,v| k}.first(3)
	end	
end
