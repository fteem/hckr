module Hckr
  class Runner

    def initialize type
      @type = type
    end

    def run!
      greeting
      links = Hckr::Scraper.new(@type).scrape!
      links.each do |hash|
        print_link_info(hash)
      end
    end

    private

    def greeting
      greeting = "Currently, top links on HN. (Cmd/Ctrl + double click on a link to open it in browser)"
      puts greeting
      puts "=" * greeting.length
    end

    def print_link_info(link)
      puts "#{link[:name]} - #{link[:href]}"
    end

  end
end
