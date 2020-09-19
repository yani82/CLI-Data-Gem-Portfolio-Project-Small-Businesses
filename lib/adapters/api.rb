class API 
    BASE_URL = 'https://api.yelp.com/v3/businesses/search'
    
    # attr_reader :url 

    #Client_ID['N-RFQHJQ15ECi-2rnMq_Kw']
    KEY = ['']

    def self.get_businesses
        response = RestClient.get(BASE_URL)
        data = JSON.parse(response.body)

        data['results'].each do |business|
            name = business["name"]
            rating = business["rating"]
            price_range = business["price_range"] 
            url = business["url"] 
            Business.new(name, rating, price_range, url)
        # url = self.url + '?apiKey=' + API_KEY + "&location=#{loc}"
        # uri = URI.parse(url)
        # body = uri.read
        # data = JSON.parse(body)
        # businesses = []
        # data["businesses"].each do |business|
        #     businesses << {name: business["name"], rating: business["rating"], price_range: business["price_range"]} 
        # end
        # businesses
        end 
    end

    def self.get_businesses_by_num(num)
        response = RestClient.get("#{BASE_URL}#{id}")
        data = JSON.parse(response.body) 
    end

end