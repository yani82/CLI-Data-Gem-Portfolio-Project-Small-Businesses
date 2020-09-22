require 'nokogiri'
require 'open-uri'

class Scraper 

    @@local_business_url = 'https://www.yellowpages.com/new-york-ny/local-business'
    @@business_listing = []
    @@business_details = []
    @@last_search_page_scraped = [] 

    def self.get_local_businesses
        local_businesses = Nokogiri::HTML(open(@@local_business_url))
        list_of_local_businesses = local_businesses.css(".v-card").map { |business| business }
        @@business_listing = list_of_local_businesses.map { |info| info.css(".info-secondary")}
        @@business_details = list_of_local_businesses.map { |info| info.css("a").attribute("href").value}
        @@business_details 
        @@list_business_categories = list_of_local_businesses.map { |cat| cat.css(".categories a").map{ |var| var.text} }
    end 

    def self.business_listing  
        @@business_listing   
    end 


    def self.business_details
        @@business_details 
    end 


    def self.retreive_single_listing(url) 
        doc = Nokogiri::HTML(open(url))

        business_array = doc.css("").css("")
        business_name = doc.css("h1").text
        business_category = doc.css("a").map 
        business_phone = doc.css("p class")
        bussiness_address = doc.css("h2")
        general_info = ("dd class") 
    end 







#     # div class "v-card" 
#     # div class "info" 
#     # a class "business-name"  
#     # span


end 
