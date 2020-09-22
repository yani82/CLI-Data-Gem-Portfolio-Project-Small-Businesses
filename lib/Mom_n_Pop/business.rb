class MomNPop::Business

    attr_accessor :name, :phone_number, :address, :categories

    @@all = [] 

    def intialize(name:, phone_number:, address:, categories:)
        @name = name 
        @phone_number = phone_number
        @address = address  
        @categories = categories
        @@all << self 
    end 

    def self.all 
        @all 
    end 

end 