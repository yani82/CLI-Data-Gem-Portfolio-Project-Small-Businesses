class MomNPop::Scraper 

   
    # @@business_listing = []
    # @@business_details = []
    # @@last_search_page_scraped = [] 

    def self.list_businesses
        local_businesses = Nokogiri::HTML(open("https://www.yellowpages.com/new-york-ny/local-business"))
        
        businesses = local_businesses.css("div.v-card") 
        businesses.each do |business|
           name = business.css("h2").text.strip
           category = business.css("div.categories a").text.strip
           phone_address = business.css("div.info-section.info-secondary").text.strip
        #    puts name
        #    puts category
        #    puts phone_address
        #MomNPop::Business.new(name, category, phone_address)
        end 
      end

    # def self.list_businesses
    #     url = 'https://www.yellowpages.com/new-york-ny/local-business'
    #     local_businesses = Nokogiri::HTML(url)
    #     businesses = local_businesses.css("div.v-card")
    #     businesses.each do |business| 
            
    #         name = business.css("h2").text.strip 
    #         category = business.css("div.categories a").text.strip#[0].children.text
    #         phone_address = business.css("div.info-section.info-secondary").text.strip#.first #not getting what I need 
    #         MomNPop::Business.new(name, category, phone_address)
        # list_of_local_businesses = local_businesses.css(".v-card").map {|business| business}
        # @@business_listing = list_of_local_businesses.map {|info| info.css(".info-secondary")}
        # @@business_details = list_of_local_businesses.map {|info| info.css("a").attribute("href").value}
        # @@business_details 
        # @@list_business_categories = list_of_local_businesses.map {|cat| cat.css(".categories a").map{|var| var.text}} 
        #binding.pry
    # end 

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