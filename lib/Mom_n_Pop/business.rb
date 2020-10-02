class MomNPop::Business

    attr_accessor :name, :category, :phone_address

    @@all = [] #an array where all instances of business are saved once initialized, a class variable accessible to the whole class 
    
    def initialize(name, category, phone_address) 
        @name = name #instance variable/property / defined on the instance 
        @category = category
        @phone_address = phone_address 
        @@all << self
    end

    #create a class method find_by_name that takes in an arg the business name that you're looking for and returns the business instance in that name  

    def self.find_by_name(name)  #should I create a method in CLI? that allows users to search for businesses by name? (calls @find_by_name?)
        all.find{|business| business.name == name}
    end 

    def self.all #class method that explicitly defining the intended receiver of this method 
        @@all 
    end 

end 

#self. class method because only the class knows about everything that has been created