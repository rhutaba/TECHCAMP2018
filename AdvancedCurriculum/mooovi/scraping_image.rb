require 'mechanize'

title_links = []
agent = Mechanize.new
current_url = "http://review-movie.herokuapp.com/"
current_page = agent.get(current_url)

header_links = current_page.search('h2 a')

header_links.each do |header_link|
  title_links << current_url + header_link[:href]
end

title_links.each do |title_link|
  url = title_link
  title_page = agent.get(url)
  image_links = title_page.search('#entry-content-single img')

  image_links.each do |image_link|
    puts image_link[:src]
  end
end
