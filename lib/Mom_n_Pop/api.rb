class API

require 'uri'
require 'net/http'
require 'openssl'

#url = URI("https://yelpapiserg-osipchukv1.p.rapidapi.com/getBusinesses")
BASE_URL = 'https://api.yelp.com/v3/businesses/search'
KEY=ENV['API_KEY'] 

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Post.new(url)
request["x-rapidapi-host"] = 'YelpAPIserg-osipchukV1.p.rapidapi.com'
request["x-rapidapi-key"] = '30d20f7c4amsha15a87ea81517dcp1043a5jsnd9a4256ee03b'
request["content-type"] = 'application/x-www-form-urlencoded'
request.body = "attributes=name%2C%20rating%2C%20price_range&term=%22local_businesses%22&term=%22local_businesses%22&locale=%2210003%22&radius=%2210%20miles%22&price=%221%2C%202%2C%203%2C%204%22&accessToken=tKF9mu56lcGL5xWMnwBGGPPF6hI_ixxcV53XAHqYRpQ1tIgoAkU-dJhomFrevVab6L-MWWp-ICSIhnBSwspy7EMYlOR0Pyf1zcxySjcm_c4LYwDXsnKVm4vteDBdX3Yx"

response = http.request(request)
puts response.read_body

    attr_reader :name, :rating, :price_range

    def self.get_businesses(name, rating, price_range)
        response = RestClient.get(BASE_URL)
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
    binding.pry
    end 

end

