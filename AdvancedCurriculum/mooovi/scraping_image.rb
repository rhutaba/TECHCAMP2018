require 'mechanize'

links = []
agent = Mechanize.new
current_url = "http://review-movie.herokuapp.com/"
current_page = agent.get(current_url)

elements = current_page.search('h2 a')

elements.each do |element|
  links << current_url + element[:href]
end

links.each do |link|
  url = link
  page = agent.get(url)
  elements = page.search('#entry-content-single img')
  elements.each do |element|
    puts element[:src]
  end
end
