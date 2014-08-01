module Hckr
  class Scraper
    
    def initialize(type)
      @doc = Hckr::Document.fetch!(type)
    end

    def scrape!
      links.inject([]) do |collection, link|
        collection << extract_data(link)
      end
    end

    private
    def links
      # Slicing off the last link since it's the 'More' link
      @doc.css('.title').search('a')[0..-2]
    end

    def extract_data(link)
      { name: extract_name(link), href: extract_href(link) }
    end

    def extract_href(link)
      link.attr("href")
    end

    def extract_name(link)
      link.text
    end

  end
end