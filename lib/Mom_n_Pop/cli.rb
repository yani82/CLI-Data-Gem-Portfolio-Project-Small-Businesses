class MomNPop::CLI #:: name spacing, so it doesn't over-wright the Ruby string methods/nesting 

    #Nokogiri and open-uri are in environment folder 

    #.self is the instance of the CLI class

    def call #instance (variable) of the CLI class 
        #flow: user opens the app, gets a welcome message, lists down local businesses, app prompts which business do you want to choose (by number), app lists business details (that is level deeper?), app ask do you want to see another business or exit?, if exit then "Come again! Thank you for supporting local businesses!  
        # system ("clear")
        puts "\n~WELCOME TO MOM N POP!~\n"
        puts "\nLet's buy local!\n\n" 
        MomNPop::Scraper.scrape_site 
        get_businesses
        list_businesses
        user_input
        thankyou 
    end  

    def get_businesses 
        @businesses = MomNPop::Business.all #instance variable 
    end  

    def list_businesses
        @businesses.each_with_index do |business, index| #(with_index = can take an argument)
        puts business.name
        end 
    end 

    def user_input  # add location/zipcode
        input = "" #make exit case insensitive
        while input.downcase != "exit" #goes into thankyou
            puts "\nPlease enter the number of which business you're interested in for more details. You may type 'exit' at any time or #list another option:\n"
            input = gets.strip 
            if input.to_i.between?(1, 30) 
                business = @businesses[input.to_i-1] #picks one business, -1 = index 0   
                puts "\n#{business.name}\n #{business.category}\n #{business.phone_address}" #to see more open in browser "would you like to open this business in the browser +y/n?"
            elsif input.downcase == "exit"
                break 
            else 
                puts "Invalid entry" 
            end 
            end 
    end 

    def thankyou 
    puts <<-'EOF' 
                                            ~Come again! Thank you for supporting local businesses!~
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