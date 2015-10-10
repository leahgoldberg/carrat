class Challenge < ActiveRecord::Base
	has_many :completed_challenges
	belongs_to :vendor

	delegate :category, to: :vendor

	before_save :generate_description

	private

	def generate_description
		if self.category == nil 
			self.description = "Spend $#{self.spend_amount} at #{self.vendor.name} #{self.time_frame} today for #{points_multiplier}X the points!"
		else 
			self.description = "Purchase $#{self.spend_amount} worth of #{self.category.downcase} at #{self.vendor.name} for #{points_multiplier}X the points!"
		end	
	end
end
