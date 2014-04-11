class Wine < ActiveRecord::Base
	validates :name, :year, :varietal, :winery, :country, presence: true
validates :year, 
    numericality: { greater_than_or_equal_to: 0 },
    if: "year.present?"
end
