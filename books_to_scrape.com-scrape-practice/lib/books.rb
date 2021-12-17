
class Books 
    attr_accessor :title, :price, :stock
    @@all = []

    def initialize 
        self.class.all << self 
    end

    def self.all 
        @@all 
    end

    def self.reset_all
        self.all.clear 
    end
end

Books.new
