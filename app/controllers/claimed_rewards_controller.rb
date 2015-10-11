class ClaimedRewardsController < ApplicationController

	def create
		current_user.claimed_rewards.create(reward: claimed_reward_params[:reward])
		redirect_to root_path
	end	

	private

	def claimed_reward_params
		params.require(:claimed_reward).permit(:reward)
	end	
end