class MomNPop::CLI #:: name spacing, so it doesn't over-wright the Ruby string methods/nesting 

    #.self is the instance of the CLI class

    def call #instance (variable) of the CLI class 
        #flow: user opens the app, gets a welcome message, lists down local businesses, app prompts which business do you want to choose (by number), app lists business details (that is level deeper?), app ask do you want to see another business or exit?, if exit then "Come again! Thank you for supporting local businesses!  
        puts "\n~WELCOME TO MOM N POP!~\n"
        puts "Let's buy local!" 
        MomNPop::Scraper.list_businesses
        #get_businesses
        list_businesses
        user_input
        choose_business
        valid_input
        thankyou 
    end  

    #Do I need an extra method to 'get businesses'?
    # def get_businesses 
    #     @businesses = MomNPop::Business.all
    # end  

    def list_businesses
        business_array = MomNPop::Scraper.list_businesses #or .all?
        MomNPop::Business.create_from_array(business_array)
        # or @businesses.each_with_index do |business, index| (with_index = can take an argument)
        # puts "#{index + 1}. #{month}"
        #end 
        #end
    end 

    def user_input  
        input = nil 
        while input != "exit" 
        puts "Please enter the number of which business you're interested in for more details. You may exit at any time or list more options:"
        input = gets.strip 

        if input == 'exit' 
            exit 
        elsif input == 'list' 
            call
        elsif valid_input(input)
            2.times do 
        end 
        business = choose_business(input)
        puts "Local business #{name}, #{category}, #{phone_address}"
        else 
            puts "Invalid entry"
            end 
        end 
    end 

    def choose_business(index) 
        value = index.to_i - 1 
        MomNPop::Business.all[value]
    end 

    def valid_input(input)
        #can I do something like input.to_i > 0 ?
        valid_array = ['1', '2', '3', '4','5']
        valid_array.include?(input) 
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