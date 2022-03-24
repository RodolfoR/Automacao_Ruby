class User
    include HTTParty;
    require_relative '../support/hooks.rb';

    base_uri = "https://jsonplaceholder.typicode.com";

    def initialize(body)
        @options = {:body => body}
    end
    
    def postUser
        puts "Tô por aqui viu..."
        # self.class.post("/users", @options)
        self.class.post("https://jsonplaceholder.typicode.com/users", @options)
    end
    
    def criarUser
        @options;
    end
end