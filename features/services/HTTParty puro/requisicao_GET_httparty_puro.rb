require 'httparty'

base_uri = 'https://jsonplaceholder.typicode.com/users/1'

response = HTTParty.get(base_uri);
puts "Response code: #{response.code}"
puts "Response message: #{response.message}"
puts "Response headers: #{response.headers}"
puts "Response body: #{response.body}"


