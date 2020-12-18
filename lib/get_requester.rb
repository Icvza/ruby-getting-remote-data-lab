# Write your code here
require 'open-uri'
require 'net/http' 
require 'pry'
require 'json'


class GetRequester

    attr_accessor :url


    def initialize(url)
        @url = url
    end

    def get_response_body 
        uri = URI.parse(url)
        response = Net::HTTP.get_response(uri)
        response.body
    end

    def parse_json
        JSON.parse(get_response_body)
    end
# binding.pry
end

# response = Net::HTTP.get_response(uri)
# #=> #<Net::HTTPOK 200 OK readbody=true> 