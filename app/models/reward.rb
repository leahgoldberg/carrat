class Reward < ActiveRecord::Base

	include Curatable 
	
	has_many :claimed_rewards
	belongs_to :vendor

	def carrats
		self.price.floor * 100
	end

	def strip_title
		self.title.downcase
			.gsub(/[(][$]\d+( value)[)]/, '')
			.gsub(/[(]\d+[%]( off)[)]/, '')
			.gsub(/[(](up to )\d+[%]( off)[)]/, '')
			.gsub(/[$]\d+( for)/, '')
			.gsub(/(up to )\d+[%]( off)/, '')
			.gsub(/[$]\d+( for )[$]\d+( of)/, '')
			.gsub(/[$]\d+( for )/, '')
			.gsub(/[$]\d+( worth of)/, '')
			.gsub(/^\s+/, '').capitalize			
	end
end


