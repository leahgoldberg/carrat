class ClaimedRewardsController < ApplicationController

	def create
		reward = Reward.find_by(id: params[:id])
		current_user.claimed_rewards.create(reward: reward)
		current_user.update_attributes(points: current_user.points - reward.carrats)
		redirect_to root_path
	end	

end