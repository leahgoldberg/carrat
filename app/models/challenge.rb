class Challenge < ActiveRecord::Base
	has_many :completed_challenges
	belongs_to :vendor

	delegate :category, to: :vendor
end
