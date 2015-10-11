class CompletedChallengesController < ApplicationController

	def create
		current_user.completed_challenges.create(challenge: completed_challenge_params[:challenge])
		redirect_to root_path
	end	

	private

	def completed_challenge_params
		params.require(:completed_challenge).permit(:challenge)
	end	
end