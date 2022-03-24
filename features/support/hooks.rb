require_relative '../support/fakers.rb'
require_relative '../services/user_service.rb'

# Before do @criarUser
#     @nome_user = faker_name
#     @email_user = faker_email
# end

# Before do @criarUser
#     @nome_user = Faker::Name.name
#     @email_user = Faker::Internet.email
# end

# Before do "@Usuario"
#     @nome_user = Faker::Name.name
#     @email_user = Faker::Internet.email
# end

# Before do |scenario|
#     @nome_user = Faker::Name.name
#     @email_user = Faker::Internet.email
# end

Before do '@User'
    # @nome_user = Faker::Name.name;
    @body = {
        # "name":"Machado de Assis",
        "name": faker_name,
        "username": faker_username_name,
        "email": faker_email,
        "address": {
            "street": faker_street,
            "suite": faker_suite,
            "city": faker_city,
            "zipcode": faker_zip_code,
            "geo": {
                "lat": faker_latitude,
                "lng": faker_longitude
            }
        },
        "phone": faker_phone,
        "website": faker_website,
        "company": {
            "name": faker_Company_name,
            "catchPhrase": faker_Company_catch_phrase,
            "bs": faker_Company_bs
        }
    }.to_json
    # @body = JSON.generate(body);

    @user = User.new(@body);
end