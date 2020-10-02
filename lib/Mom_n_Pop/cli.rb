class MomNPop::CLI #:: name spacing, so it doesn't over-wright the Ruby string methods

    #Nokogiri and open-uri are in environment folder 

    #.self is the instance of the CLI class

    def call #instance (variable) of the CLI class  
        puts "\n~WELCOME TO MOM N POP!~\n"
        puts "\nLet's buy local!\n\n" 
        # scrape_businesses
        select_location
        get_businesses
        list_businesses
        user_input
        thankyou 
    end  

    # def scrape_businesses
    #     MomNPop::Scraper.scrape_site #calling the method from scraper.rb
    # end 

    def select_location
        puts "Where are you located?"
        while MomNPop::Business.all.empty? 
            input = gets.strip
            formatted_input = input.gsub(" ", "-") 
            MomNPop::Scraper.scrape_site(formatted_input)
        #add more options for use to input more locations 
        end 
    end 

    def get_businesses 
        @businesses = MomNPop::Business.all #instance variable that can be used in other methods & .all is calling the .all method in business class
    end  

    def list_businesses
        @businesses.each do |business| #.each return the original array / what iterator would you use to create a new array = .map/.collect
        puts business.name
        end
    end 

    #practice iterators, moving methods in classes, pdf of "Sandi Metz" on OO, 

    def user_input  # add location/zipcode
        #add find_by_name by using inpit = Business.find(business, in terminal Business.find(22)
        input = "" #make exit case insensitive 
        while input.downcase != "exit" #or back 
            puts "\nPlease enter the number of which business you're interested in for more details. You may type 'exit' at any time or #list another option. Or type 'back' to enter a new location:\n"
            input = gets.strip 
            if input.to_i.between?(1, 30) 
                business = @businesses[input.to_i-1] #picks one business, -1 = index starts at 0   
                puts "\n#{business.name}\n #{business.category}\n #{business.phone_address}" #+to see more open in browser "would you like to open this business in the browser +y/n?"
            elsif input.downcase == "exit"
                break 
            elsif input.downcase == "back"
                select_location
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