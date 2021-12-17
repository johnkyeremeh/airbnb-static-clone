require 'rubygems'
require 'nokogiri'
require 'open-uri'


html = URI.open('https://flatironschool.com/')

doc = Nokogiri::HTML5(html)

courses = doc.css(".inlineMobileLeft-2Yo002.imageTextBlockGrid2-3jXtmC")[0]

p courses.attributes