class Vendor < ActiveRecord::Base
	has_many :challenges
	has_many :rewards
end
