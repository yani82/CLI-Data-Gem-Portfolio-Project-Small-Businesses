require 'nokogiri'
require 'open-uri'

class Scraper 

    @@local_business_url = 'https://www.yellowpages.com/new-york-ny/local-business'
    @@business_name = []
    @@business_category = []
    @@last_search_page_scraped = [] 

    def self.get_local_business
        local_businesses = Nokogiri::HTML(open(@@local_businesses_url))
        business_name = business_name("span").first
        @@business_category = business_category.css("a href").map {}
        @@business_details = businesses_details.text.split
    end 

    div class "v-card" 
    div class "info" 
    a class "business-name"  
    span


end 
