require "hckr/version"
require 'nokogiri'
require 'open-uri'

module Hckr
  autoload :Scraper,        'hckr/scraper'
  autoload :Document,       'hckr/document'
  autoload :Runner,         'hckr/runner'
  autoload :JsonBuilder,    'hckr/json_builder'
end
