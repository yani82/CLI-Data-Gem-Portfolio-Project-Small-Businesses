class MomNPop::CLI

    def initialize
    end 

    def call 
        scraper 
        welcome 
        thankyou 
    end  

    def scraper 
    end 

    def print_all 
        Business.all.each {|b| puts b.name }
    end 

    def welcome 
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
    end 

    # def search  
    #     input = nil 
    #     while input != "exit" 
    #     puts "Would you like to search another zipcode or exit?"
    #     input = gets.strip.downcase

    #     if input.to_i > 0 
    #         business = @businesses[input.to_i-1]
    #         puts "#{business.name} - #{business.rating} - #{business.price_range}"
    #     elsif input == "location" 
    #     end 
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