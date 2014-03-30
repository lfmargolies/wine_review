class WinesController < ApplicationController
	def index
		@available_at = Time.now
		@wines = ["Kris","Ravenswood", "Penfolds", "Marcassin"]
	end
end