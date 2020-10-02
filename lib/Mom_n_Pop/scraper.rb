class MomNPop::Scraper 

    def self.scrape_site(location)
      begin  
        local_businesses = Nokogiri::HTML(open("https://www.yellowpages.com/#{location}/local-business"))
      rescue
        puts "We cannot find this location, would you like to add another entry?"
      end 
      if local_businesses
          businesses = local_businesses.css("div.v-card") 
          #it's a variable defined in a method and cannot be used anywhere else - only within the scope of the method
          businesses.each do |business|
            name = business.css("h2").text.strip
            category = business.css("div.categories a").text.strip
            phone_address = business.css("div.info-section.info-secondary").text.strip 
            MomNPop::Business.new(name, category, phone_address) #it instantiates a new instance of the Business class  
          end 
      end
    end 
end