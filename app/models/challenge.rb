class Challenge < ActiveRecord::Base

	include Curatable 
	
	has_many :completed_challenges
	belongs_to :vendor

	delegate :category, to: :vendor
end
