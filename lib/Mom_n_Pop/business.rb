class MomNPop::Business

    attr_accessor :name, :categories, :phone_number, :address

    @@all = [] 

    def intialize(business_hash)
        @name = business_hash[:name] 
        @categories = business_hash[:categories]
        @phone_number = business_hash[:phone_number]
        @address = business_hash[:address]  
        @@all << self 
    end 

    def self.create_from_array(business_array)
        business_array.each do |b|
        MomNPop::Business.new(movie)
        end 
    end 

    def self.all 
        @all 
    end 

end 