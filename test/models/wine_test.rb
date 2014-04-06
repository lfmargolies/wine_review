require 'test_helper'

class WineTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

def setup
  @wine = Wine.new
end
test 'name remembers its value' do
  @wine.name = 'Kris Pinot Grigio'
  assert_equal 'Kris Pinot Grigio', @wine.name
end
test 'year remembers its value' do
  @wine.year = 2010
  assert_equal 2010, @wine.year
end
test 'varietal remembers its value' do
  @wine.varietal = 'Pinot Grigio'
  assert_equal 'Pinot Grigio', @wine.varietal
end
test 'winery remembers its value' do
  @wine.winery = 'Kris'
  assert_equal 'Kris', @wine.winery
end
test 'country remembers its value' do
  @wine.country = 'Italy'
  assert_equal 'Italy', @wine.country
end
test 'persistence works properly' do
  created_wine = Wine.create(name: 'Cortina Zinfandel', year: 2011, varietal: 'Zinfandel', winery: 'Seghesio', country: 'USA')
  found_wine = Wine.find created_wine.id
  assert_not_nil found_wine
  assert_equal 'Cortina Zinfandel', found_wine.name
  assert_equal 2011, found_wine.year
  assert_equal 'Zinfandel', found_wine.varietal
  assert_equal 'Seghesio', found_wine.winery
  assert_equal 'USA',found_wine.country
end
test "update from a fixture" do
  wine = wines(:kris)
  assert_equal 2010, wine.year
  wine.year = 2009
  wine.save
  updated = Wine.find(wine.id)
  assert_equal 2009, updated.year
end



end

