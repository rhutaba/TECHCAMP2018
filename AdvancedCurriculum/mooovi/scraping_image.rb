require 'mechanize'

agent = Mechanize.new
page = agent.get("http://review-movie.herokuapp.com/")
elements = page.search('.poster_link img')

elements.each do |element|
  puts element.get_attribute('src')
end
