class WelcomeController < ApplicationController

	def index
		@current_user = current_user
		@challenges = Challenge.curate(current_user)
		@top_rewards = Reward.curate(current_user)
		@preferred_brands = current_user.preferred_brands
	end

end
