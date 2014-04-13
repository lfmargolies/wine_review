class Wine < ActiveRecord::Base
	VARIETALS = ["Pinot Grigio", "Merlot", "Pinot Noir", "Shiraz", "Zinfandel", "Cabernet Sauvignon", "Chardonnay", "Pinot", "Riesling"]
	validates :name, :year, :varietal, :winery, :country, presence: true
validates :year, 
    numericality: { greater_than_or_equal_to: 0 },
    if: "year.present?"
    	validates :varietal, inclusion: {in: VARIETALS }
end
