class RewardsController < ApplicationController

	def index
		@rewards = Reward.all
	end	

	def create
		params[:deals].each_with_index do |deal_object, index|

			current_deal = deal_object[1][:deal]
			vendor = Vendor.find_or_create_by(name: current_deal[:merchant][:name], category: current_deal[:category_name])
			
			reward = vendor.rewards.find_or_create_by(
				title: current_deal[:title],
		    short_title: current_deal[:short_title],
		    description: current_deal[:description],
		    discount_amount: current_deal[:discount_amount],
		    discount_percentage: current_deal[:discount_percentage],
		    expires_at: current_deal[:expires_at],
		    fine_print: current_deal[:fine_print],
		    image_url: current_deal[:image_url],
		    price: current_deal[:price],
		    untracked_url: current_deal[:untracked_url],
		    value: current_deal[:value]
			)
		end
	end
end