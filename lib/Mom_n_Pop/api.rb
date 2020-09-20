class API
    require 'yelp'

# client = Yelp::Client.new({ consumer_key: YOUR_CONSUMER_KEY,
#                             consumer_secret: YOUR_CONSUMER_SECRET,
#                             token: YOUR_TOKEN,
#                             token_secret: YOUR_TOKEN_SECRET
#                           })
    
    BASE_URL = 'https://api.yelp.com/v3/businesses/search'
    
    attr_reader :name, :rating, :price_range

    KEY = ENV['API_KEY'] 

    def self.get_businesses(name, rating, price_range)
        response = RestClient.get("#{BASE_URL}#{KEY}&name=#{name}&rating=#{rating}&price_range={price_range}.gte=")
        data = JSON.parse(response.body)

        data['results'].each do |business|
            name = business["name"]
            rating = business["rating"]
            price_range = business["price_range"] 
            Business.new(name, rating, price_range)
        end 
    end

    def self.get_businesses_by_location(location)
        response = RestClient.get("#{BASE_URL}#{id}")
        data = JSON.parse(response.body) 
        
        data['results'].each do |business| 
            Business.new(location[name])
    end
    end 

end