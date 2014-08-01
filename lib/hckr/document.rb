module Hckr
  class Document
    DEFAULT_URL = "https://news.ycombinator.com"
    NEWEST_URL  = "#{DEFAULT_URL}/newest"
    BEST_URL    = "#{DEFAULT_URL}/best"
    SHOW_URL    = "#{DEFAULT_URL}/show"
    JOBS_URL    = "#{DEFAULT_URL}/jobs"

    def self.fetch!(arg)
      case arg[:page]
      when :newest 
        Nokogiri::HTML(open(NEWEST_URL)) 
      when :best
        Nokogiri::HTML(open(BEST_URL)) 
      when :show
        Nokogiri::HTML(open(SHOW_URL)) 
      when :jobs
        Nokogiri::HTML(open(JOBS_URL)) 
      else
        Nokogiri::HTML(open(DEFAULT_URL)) 
      end
    end
    
  end
end