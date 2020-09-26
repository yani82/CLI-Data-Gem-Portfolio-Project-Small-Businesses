class MomNPop::Business

    attr_accessor :name, :category, :phone_address

    @@all = []

    def initialize(name, category, phone_address)
        @name = name 
        @category = category
        @phone_address = phone_address 
        @@all << self
    end

    # def intialize(business_hash)
    #     @name = business_hash[:name] 
    #     @category = business_hash[:category]
    #     @phone_address = business_hash[:phone_address]  
    #     @@all << self 
    # end 

    # def self.create_from_array(business_array)
    #     business_array.each do |b|
    #     MomNPop::Business.new(business)
    #     end 
    # end 

    def self.all
        MomNPop::Scraper.list_businesses
        @@all 
        # puts "hello"
    end 

end 