module Curatable

	def self.included(base)
		base.extend ClassMethods
	end	

	module ClassMethods
		def curate(user)
			ranked_possibilities = rank_vendors_and_categories(user).map { |k,v| k}.first(5)
			vendors = self.where(vendor_id: Vendor.where(name: ranked_possibilities), active: true)
			categories = self.where(vendor_id: Vendor.where(category: ranked_possibilities), active: true) 
			(vendors + categories).uniq
		end

		private 

		def calculate_vendor_points(user)
			user.transactions.group('vendor').order('count_id desc').count('id')
		end
		
		def calculate_category_points(user)
			user.transactions.group('category').order('count_id desc').count('id')
		end

		def rank_vendors_and_categories(user)
			result = calculate_vendor_points(user).merge(calculate_category_points(user)).sort_by {|k,v| -v}
			Hash[result]
		end	
	end	
		
end	