class Scraping
  def self.movie_urls
    puts 'get movies link URL'

    links = []
    agent = Mechanize.new
    root_url = "http://review-movie.herokuapp.com/"
    next_url = ""

    while true do
      current_url = root_url + next_url
      current_page = agent.get(current_url)

      header_links = current_page.search('.entry-title a')

      header_links.each do |header_link|
        links << root_url + header_link[:href]
      end

      next_link = current_page.at('.pagination .next a')
      break unless next_link
      next_url = next_link[:href]
    end

    links.each do |link|
      get_product(link)
    end
  end

  def self.get_product(link)
    puts 'get movie information'

    agent = Mechanize.new
    page = agent.get(link)

    title = page.at('.entry-title').inner_text if page.at('.entry-title')
    image_url = page.at('.entry-content img')[:src] if page.at('.entry-content img')
    director = page.at('.director span').inner_text if page.at('.director span')
    detail = page.at('.entry-content p').inner_text if page.at('.entry-content p')
    open_date = page.at('.date span').inner_text if page.at('.date span')

    product = Product.where(title: title).first_or_initialize
    product.image_url = image_url
    product.director = director
    product.detail = detail
    product.open_date = open_date

    product.save
  end
end
