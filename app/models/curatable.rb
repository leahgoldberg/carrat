module Curatable

	def self.included(base)
		base.extend ClassMethods
	end	

	module ClassMethods
		def curate 
			self.all
		end
	end	
		
end	