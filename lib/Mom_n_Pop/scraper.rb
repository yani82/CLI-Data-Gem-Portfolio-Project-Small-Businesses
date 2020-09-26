class MomNPop::Scraper 

   
    # @@business_listing = []
    # @@business_details = []
    # @@last_search_page_scraped = [] 

    def self.list_businesses
        url = 'https://www.yellowpages.com/new-york-ny/local-business'
        local_businesses = Nokogiri::HTML(url)
        
        local_businesses.css("div.search-results.organic").each do |business| 
            
            name = local_businesses.css("div.v-card h2.n").text.strip 
            category = local_businesses.css("div.categories a").text.strip#[0].children.text
            phone_address = local_businesses.css("div.info-secondary").text.strip#.first #not getting what I need 
            MomNPop::Business.new(name, category, phone_address)
        # list_of_local_businesses = local_businesses.css(".v-card").map {|business| business}
        # @@business_listing = list_of_local_businesses.map {|info| info.css(".info-secondary")}
        # @@business_details = list_of_local_businesses.map {|info| info.css("a").attribute("href").value}
        # @@business_details 
        # @@list_business_categories = list_of_local_businesses.map {|cat| cat.css(".categories a").map{|var| var.text}} 
        #binding.pry
    end 

    # def self.business_listing  
    #     @@business_listing   
    # end 


    # def self.business_details
    #     @@business_details 
    # end 


    # def self.get_more_businesses
    #     local_businesses = Nokogiri::HTML(open(@@local_business_url))

    # #     business_array = local_businesses.css("").css("")
    # #     business_name = local_businesses.css("h1").text
    # #     business_category = local_businesses.css("a").map 
    # #     business_phone = local_businesses.css("p-class")
    # #     bussiness_address = local_businesses.css("h2")
    # #     general_info = ("dd-class") 
    # end 

#     # div class "v-card" 
#     # div class "info" 
#     # a class "business-name"  
#     # span
    end 
end 
