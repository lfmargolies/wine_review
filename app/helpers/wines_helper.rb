module WinesHelper
	def formatted_time(time)
  		time.strftime("%A, %B %d, %Y")
	end

	def format_average_rating(wine)
  average = wine.average_rating
  if average
    pluralize(number_with_precision(average, precision: 1), 'ratings')
  else
    'No Log Entries'
  end
end
end
