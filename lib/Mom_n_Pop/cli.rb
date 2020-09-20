class MomNPop::CLI

    # attr_accessor :name, :rating, :price_range

    # def initialize(name, rating, price_range)
    #     @name = []
    #     @rating = []
    #     @price_range = []
    # end 

    def call 
        welcome
        # main 
        # Api.get_businesses 
        list_businesses
        search
        thankyou 
    end  

    # def main 
    #     print_all 
    # end 

    def print_all 
        Business.all.each {|b| puts b.name }
    end 

    def welcome 
        input = nil
#         puts <<-'EOF' 
#                              ~WELCOME TO MOM N POP!~
#         $$$$$$$$
#         $$$$$$$$$$
#        $$$$$$$$$$$$
#        $$ 0    0 $$
#        $$   ()   $$
#       $$$ \    / $$$
#       $$$  \__/  $$$
#          \______/
#       _____!  !_____
#       !            !
#       !  !      !  !
#       /  !      /  !
#      /  /      /  /
#     /_ /______/_ /
#   | @@@       @@@|
#  /0000000000000000\
# /                / \
# /                /   \
# /                /    /\
# /                /    //00\
# /                /    / \__/
# 00000000000000000    /   /
# |               |   /   /
# |               |  /   /
# |               | /   /
# |               |/   /      
# /00\0000000000000000/00\
# \__/oooooooooooooooo\__/
# EOF

        puts "Enter your current location:"
        input = gets.strip.downcase
    end 

    def list_businesses
        # puts <<-DOC.gsub /^\s*/, ''
        #     1. The Craft Studio - 4.5 ★ - $$
        #     2. New York Paint & Hardware - 4.5 ★ - $ 
        #     3. 84st Watch Repair - 4 ★ - na
        #     4. DriveTech Computer Repair NYC - 4.5 ★ - na
        #     5. Framed on Madison - 5 ★ - $$ 
        # DOC
        # @businesses = MomNPop::Business
        # @businesses.each.with_index(1) do |business, i| 
        # puts "#{i}. #{business.name} - #{business.rating} - #{business.price_range}"
        # end 
    end 

    def search  
        input = nil 
        while input != "exit" 
        puts "Would you like to search another zipcode or exit?"
        input = gets.strip.downcase

        if input.to_i > 0 
            business = @businesses[input.to_i-1]
            puts "#{business.name} - #{business.rating} - #{business.price_range}"
        elsif input == "location" 
        end 
        end 
    end 

    # def Api.get_businesses(name, rating, price_range) 
    #     businesses_hash = API.get_businesses
    #     @@businesses = businesses_hash.map do |business_hash| 
    #         Business.new(business_hash)
    #     end 
    # end 

    def thankyou 
    puts <<-'EOF' 
                    ~Thank you for buying local! See you again!~
    _   _                 _                      
    | | | |               | |                     
    | |_| |__   __ _ _ __ | | ___   _  ___  _   _ 
    | __| '_ \ / _` | '_ \| |/ / | | |/ _ \| | | |
    | |_| | | | (_| | | | |   <| |_| | (_) | |_| |
     \__|_| |_|\__,_|_| |_|_|\_\\__, |\___/ \__,_|
                                 __/ |            
                                |___/             
    EOF
    end 
end 