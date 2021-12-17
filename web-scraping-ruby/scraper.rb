require 'pry'
require 'nokogiri'
require 'open-uri'
require 'net/http'
require 'csv'

url  = "https://en.wikipedia.org/wiki/Douglas_Adams"
doc = Nokogiri::HTML(url)

doc.css("p").text

binding.pry

