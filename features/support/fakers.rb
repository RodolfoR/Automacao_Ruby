require 'faker'

def faker_name
    Faker::Name.name
end

def faker_username_name
    Faker::Name.name.split(" ")[0] 
end

def faker_email
    Faker::Internet.email
end

def faker_phone
    "119#{Faker::PhoneNumber.subscriber_number(length: 8)}"
end

def faker_street
    Faker::Address.street_name #=> "Larkin Fork"
end

def faker_suite
    Faker::Address.secondary_address #=> "Apt. 672"
end

def faker_city
    Faker::Address.city #=> "Imogeneborough"
end

def faker_zip_code
    Faker::Address.zip_code #=> "58517" or "23285-4905"
end

def faker_latitude
    Faker::Address.latitude #=> "-58.17256227443719"
end

def faker_longitude
    Faker::Address.longitude #=> "-156.65548382095133"
end

def faker_website
    # Keyword arguments: subdomain, domain
    Faker::Internet.domain_name #=> "effertz.info"
    # Faker::Internet.domain_name(domain: "example") #=> "example.net"
    # Faker::Internet.domain_name(subdomain: true, domain: "example") #=> "horse.example.org"
end

def faker_Company_name
    Faker::Company.name #=> "Hirthe-Ritchie"
end

def faker_Company_catch_phrase
    # Generate a buzzword-laden catch phrase.
    Faker::Company.catch_phrase #=> "Business-focused coherent parallelism"
end

def faker_Company_bs
    # When a straight answer won't do, BS to the rescue!
    Faker::Company.bs #=> "empower one-to-one web-readiness"
end
