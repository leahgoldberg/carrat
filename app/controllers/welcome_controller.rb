class WelcomeController < ApplicationController

	def index
		@current_user = current_user
		@top_challenges = Curatable.curate_challenges(current_user)
		@top_rewards = Curatable.curate_rewards(current_user)
		@trusted_brands = current_user.trusted_brands
	end

	private

	def current_user
		User.find_by(username: "Morgan Stanley")
	end	
		
end
