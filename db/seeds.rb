# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Wine.create(name: 'Kris Pinot Grigio', year: 2010, winery: 'Kris', country: 'Italy', varietal: 'Pinot Grigio')

Wine.create(name: 'Ravenswood Zen of Zinfandel', year: 2004, winery: 'Ravenswood', country: 'USA', varietal: 'Zinfandel')

Wine.create(name: 'Penfolds Rawson', year: 2011, winery: 'Penfolds Wines', country: 'Australia', varietal: 'Shiraz')

Wine.create(name: 'Marcassin Pinot Noir Russian River Valley Zio', year: 2003, winery: 'Marcassin Vineyard', country: 'USA', varietal: 'Pinot Noir')