class MomNPop::CLI

    def call 
        welcome 
        list_businesses
        option 
        get_businesses
        thankyou 
    end  

    #def main
    #   print_all
    #end 

    #def print_all 
    #   
    #end 

    def welcome 
        input = nil
        puts <<-'EOF' 
                             ~WELCOME TO MOM N POP!~
        $$$$$$$$
        $$$$$$$$$$
       $$$$$$$$$$$$
       $$ 0    0 $$
       $$   ()   $$
      $$$ \    / $$$
      $$$  \__/  $$$
         \______/
      _____!  !_____
      !            !
      !  !      !  !
      /  !      /  !
     /  /      /  /
    /_ /______/_ /
  | @@@       @@@|
 /0000000000000000\
/                / \
/                /   \
/                /    /\
/                /    //00\
/                /    / \__/
00000000000000000    /   /
|               |   /   /
|               |  /   /
|               | /   /
|               |/   /      
/00\0000000000000000/00\
\__/oooooooooooooooo\__/
EOF

        puts "Enter your current location:"
        input = gets.strip.downcase
        case input
        when "10028" 
        end 
    end 

    def list_businesses
        puts <<-DOC.gsub /^\s*/, ''
            1. The Craft Studio - 4.5 ★ - $$
            2. New York Paint & Hardware - 4.5 ★ - $ 
            3. 84st Watch Repair - 4 ★ - na
            4. DriveTech Computer Repair NYC - 4.5 ★ - na
            5. Framed on Madison - 5 ★ - $$ 
        DOC
        # @businesses = MomNPop::Business
        # @businesses.each.with_index(1) do |business, i| 
        # puts "#{i}. #{business.name} - #{business.rating} - #{business.price_range}"
        # end 
    end 

    def option  
        input = nil 
        while input != "exit" 
        puts "Would you like to search another zipcode or exit?"
        input = gets.strip.downcase

        if input.to_i > 0
            business = @businesses[input.to_i-1]
            puts "#{business.name} - #{business.rating} - #{business.price_range}"
        elsif input == "location" 
            #list_businesses
        #else puts "Not sure what you want, type location or exit."
        end 
        end 
    end 

    def get_businesses #arg based on? 
        businesses_hash = API.new('https://api.yelp.com/v3/businesses/search').fetch.local.businesses 
        @@businesses = businesses_hash.map do |business_hash| 
            Business.new(business_hash)
        end 
    end 

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