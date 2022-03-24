require 'httparty'

base_uri = 'https://jsonplaceholder.typicode.com/posts'

response = HTTParty.post('https://jsonplaceholder.typicode.com/posts',
    :headers=>{"Content-type":"application/json", "charset":"utf-8"},
    :body=>{"userId": 1, "title":"Vida de QA", "body":"O dia-a-dia de um Analista de Qualidade de Software"}.to_json
)

# @body= {
#     "userId":1,
#     "title":"Vida de QA",
#     "body":"O dia-a-dia de um Analista de Qualidade de Software"
# }.to_json
# @headers= {
#     'Content-type':'application/json',
#     'charset':'UTF8'
# }
# response = HTTParty.post('https://jsonplaceholder.typicode.com/posts', headers: @headers, body: @body)


puts "Response code: #{response.code}"
puts "Response message: #{response.message}"
puts "Response headers>inspect: #{response.headers.inspect}"
puts "Response body: #{response.body}"
