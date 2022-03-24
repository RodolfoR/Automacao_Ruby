require 'httparty'

@body = {
    "name":"Machado de Assis",
    "username":"Machado",
    "email":"massis@email.com",
    "address":{
      "street":"Dois de Dezembro",
      "suite":"Apt. 556",
      "city":"Uiraúna",
      "zipcode":"58915-000",
      "geo":{
        "lat":"-37.3159",
        "lng":"81.1496"
      }
    },
    "phone":"1-770-736-8031 x56442",
    "website":"machadodeassis.org",
    "company":{
      "name":"cronicas-de-assis",
      "catchPhrase":"Multi-layered client-server neural-net",
      "bs":"harness real-time e-markets"
    }
}.to_json

@headers = {
    "Content-type":"application/json",
    "charset":"UTF-8"
}

response = HTTParty.post('https://jsonplaceholder.typicode.com/users', headers: @headers, body: @body)

puts "Response code: #{response.code}"
puts "Response message: #{response.message}"
puts "Response headers>inspect: #{response.headers.inspect}"
puts "Response body: #{response.body}"

