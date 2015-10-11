module Curatable

	def self.included(base)
		base.extend ClassMethods
	end	

	module ClassMethods
		def curate(user)
			ranked_possibilities = rank_vendors_and_categories(user).map { |k,v| k}
			result = Vendor.where(name: ranked_possibilities) + Vendor.where(category: ranked_possibilities)
			thing = self.where(vendor_id: result)
			binding.pry
		end

		private 

		def calculate_vendor_points(user)
			user.transactions.group('vendor').order('count_id desc').count('id')
		end
		
		def calculate_category_points(user)
			user.transactions.group('category').order('count_id desc').count('id')
		end

		def rank_vendors_and_categories(user)
			calculate_vendor_points(user).merge(calculate_category_points(user)).sort_by {|k,v| -v}.to_h
		end	
	end	
		
end	