class MomNPop::Scraper 

    def self.scrape_site
        local_businesses = Nokogiri::HTML(open("https://www.yellowpages.com/new-york-ny/local-business"))
        
        businesses = local_businesses.css("div.v-card") 
        businesses.each do |business|
           name = business.css("h2").text.strip
           category = business.css("div.categories a").text.strip
           phone_address = business.css("div.info-section.info-secondary").text.strip #separate phone and address to make space in listing shown
           MomNPop::Business.new(name, category, phone_address) #instantiates (soft creates) a new instance of the Business class 
        end 
      end
end