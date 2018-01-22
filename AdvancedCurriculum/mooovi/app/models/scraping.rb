class Scraping
  def self.movie_urls
    puts 'get movies link URL'

    agent = Mechanize.new
    current_url = "http://review-movie.herokuapp.com/"
    current_page = agent.get(current_url)

    header_links = current_page.search('h2 a')

    header_links.each do |header_link|
      puts current_url + header_link[:href]
      get_product(current_url + header_link[:href])
    end
  end

  def self.get_product(link)
    puts 'get movie information'

    agent = Mechanize.new
    page = agent.get(link)

    title = page.at('.entry-title').inner_text
    image_url = page.at('#entry-content-single img')[:src]

    product = Product.where(title: title, image_url: image_url).first_or_initialize
    product.save
  end
end
