class MomNPop::Business

    attr_accessor :name, :rating, :price_range, :url 

    @@all = [] 

    def intialize(name:, rating:, price_range:, url:)
        @name = name 
        @rating = rating 
        @price_range = price_range 
        @url = url 
        @@all << self 
    end 

    def self.all 
        @all 
    end 

    # def self.name 

    #     business_1 = Business.new 
    #     business_1.name = "The Craft Studio"
    #     business_1.rating = "4.5 ★"
    #     business_1.price_range = "$$"
    #     business_1.url = "https://www.yelp.com/biz/the-craft-studio-new-york?osq=Local+Businesses"

    #     business_2 = Business.new 
    #     business_2.name = "New York Paint & Hardware"
    #     business_2.rating = "4.5 ★"
    #     business_2.price_range = "$"
    #     business_2.url = "https://www.yelp.com/biz/new-york-paint-and-hardware-new-york?osq=Local+Businesses"

    #     business_3 = Business.new 
    #     business_3.name = "84st Watch Repair"
    #     business_3.rating = "4 ★"
    #     business_3.price_range = "na"
    #     business_3.url = "https://www.yelp.com/biz/84st-watch-repair-new-york-3?osq=Local+Businesses"

    #     business_4 = Business.new 
    #     business_4.name = "DriveTech Computer Repair NYC"
    #     business_4.rating = "4.5 ★"
    #     business_4.price_range = "na"
    #     business_4.url = "https://www.yelp.com/biz/drivetech-computer-repair-nyc-new-york?osq=Local+Businesses"

    #     business_5 = Business.new 
    #     business_5.name = "Framed on Madison"
    #     business_5.rating = "5 ★"
    #     business_5.price_range = "$$"
    #     business_5.url = "https://www.yelp.com/biz/framed-on-madison-new-york?osq=Local+Businesses"

    #     [business_1, business_2, business_3, business_4, business_5]
    # end 

    # def self.rating 
    # end 

    # def self.price_range
    # end 

    # def url 
    # end 

end 