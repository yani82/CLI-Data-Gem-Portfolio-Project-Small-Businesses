class MomNPop::Business

    attr_accessor :name, :category, :phone_address

    @@all = []

    def initialize(name, category, phone_address)
        @name = name 
        @category = category
        @phone_address = phone_address 
        @@all << self
    end

    def self.all
        MomNPop::Scraper.scrape_site
        @@all 
    end 

end 