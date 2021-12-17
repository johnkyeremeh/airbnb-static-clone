require 'pry'
require 'nokogiri'
require 'open-uri'

require_relative '../lib/books'

class Scraper

    def get_page 
        html = URI.open("http://books.toscrape.com/") #grabs the html of the url
        Nokogiri::HTML5(html)

        #the page: doc =  Nokogiri::HTML5(html)
        #collection of books: doc.css(".col-xs-6")
        #the title: doc.css(".col-xs-6").first.css("h3")
        #price: doc.css(".col-xs-6").first.css(".price_color")
        #in_stock: doc.css(".col-xs-6").first.css("p.instock.availability")
        binding.pry
    end

    def get_books
        self.get_page.css(".col-xs-6") 
    end

    def make_books
        self.get_books.each do |post|
            book = Books.new
            book.title = post.css("h3").text.strip
            book.price =  post.css(".price_color").text.strip
            book.stock = post.css("p.instock.availability").text.strip
        end
    end

    # def print__books
    #     self.make_books
    #     Books.all.each do |book|
    #       if book.title && book.title != ""
    #         puts "Title: #{course.title}"
    #         puts "  Schedule: #{course.schedule}"
    #         puts "  Description: #{course.description}"
    #       end
    #     end

    # end

end


Scraper.new.get_page 