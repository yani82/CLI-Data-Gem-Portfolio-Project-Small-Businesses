class MomNPop::CLI #:: name spacing, so it doesn't over-wright the Ruby string methods 

    #self is the class of CLI 

    def call #instance (variable) of the CLI class 
        #flow: user opens the app, gets a welcome message, lists down local businesses, app prompts which business do you want to choose (by number), app lists business details (that is level deeper?), app ask do you want to see another business or exit?, if exit then "Come again! Thank you for supporting local businesses!  
        welcome 
        MomNPop::Scraper.scrape 
        list_businesses
        user_input
        thankyou 
    end  

    def list_businesses
        business_array = MomNPop::Scraper.scrape_with_attrs
        MomNPop::Business.create_from_array(business_array)
    end 

    def welcome 
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
    end 

    def user_input  
        input = nil 
        while input != "exit" 
        puts "Please enter the number of which business you're interested in for more details. You may exit at any time or list more options:"
        input = gets.strip 

        if input == 'exit' 
            exit 
        elsif input == "list" 
            call 
        elsif list_businesses(input)
            3.times do 
        end 
        businesses = choose_business(input)
        puts "Local business #{name}, #{categories}, #{phone_number}, #{address}"
        else 
            puts "Invalid entry"
            end 
        end 
    end 

    def choose_business(index) 
        value = index.to_i - 1 
        MomNPop::Business.all[value]
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