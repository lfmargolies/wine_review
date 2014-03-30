class WinesController < ActionController
	def index
		@available_at = Time.now
		@wines = ["Kris","Ravenswood", "Penfolds", "Marcassin"]
	end
end