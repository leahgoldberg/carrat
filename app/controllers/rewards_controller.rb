class RewardsController < ApplicationController

	def index
		@rewards = Reward.all
	end	

	def create
		binding.pry
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

# category_name: "Health & Beauty"
# category_slug: "health-beauty"
# description: ""
# discount_amount: 255
# discount_percentage: 0.73
# expires_at: "2040-01-21T05:00:00Z"
# fine_print: ""
# image_url: "https://api.sqoot.com/v2/deals/3961295/image?api_key=w40j1z"
# price: 95
# provider_name: "Groupon"
# provider_slug: "groupon"
# short_title: "73% off at Vitality Wellness & Aesthetics"
# title: "Up to 74% Off Weight Loss at Vitality Wellness & Aesthetics "
# untracked_url: "https://www.groupon.com/deals/vitality-wellness-and-aesthetics"
# url: "http://api.sqoot.com/v2/deals/3961295/click?api_key=w40j1z"
# value: 350