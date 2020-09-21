# require 'nokogiri'
# require 'open-uri'

# class Scraper 

#     @@local_business_url = 'https://www.yellowpages.com/new-york-ny/local-business'
#     @@business_listing = []
#     @@business_details = []
#     @@last_search_page_scraped = [] 

#     def self.get_local_businesses
#         local_businesses = Nokogiri::HTML(open(@@local_businesses_url))
#         list_of_local_businesses = list_of_local_businesses.css(div class="v-card").first
#         @@business_listing = business_listing.css(div class="info").map 
#         @@business_details = businesses_details.text("a class")
#         @@business_details 
#     end 

#     def self.business_listing  
#         @@business_listing   
#     end 


#     def self.business_details
#         @@business_details 
#     end 


#     def self.retreive_single_listing(url) 
#         doc = Nokogiri::HTML(open(url))

#         business_array = doc.css("").css("")
#         business_name = doc.css("h1").text
#         business_category = doc.css("a").map 
#         business_phone = doc.css("p class")
#         bussiness_address = doc.css("h2")
#         general_info = ("dd class") 






#     # div class "v-card" 
#     # div class "info" 
#     # a class "business-name"  
#     # span


# end 
