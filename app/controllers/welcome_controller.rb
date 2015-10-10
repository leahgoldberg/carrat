class WelcomeController < ApplicationController

	def index
		@current_user = current_user
		@top_challenges = Challenge.curate(current_user)
		@top_rewards = Reward.curate(current_user)
		@trusted_brands = current_user.trusted_brands
	end

	private

	def current_user
		User.find_by(username: "Morgan Stanley")
	end	
		
end
