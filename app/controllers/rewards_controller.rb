class RewardsController < ApplicationController

	def index
		@rewards = Reward.all
	end	

	def create
		params[:deals].each_with_index do |deal,i|
			puts "*" * 10
			puts "deal: #{deal[1][:deal]}"
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