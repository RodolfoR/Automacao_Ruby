require_relative '../services/user_service.rb'
require_relative '../support/hooks.rb'

Dado('que possuo o endereco da api') do
    @base_uri = "https://jsonplaceholder.typicode.com/users/";
end

Quando('realizo uma chamada GET users com o id {int}') do |id_user|
    @response = HTTParty.get(@base_uri + "#{id_user}");
end

Então('deve retornar o usuario com o id informado') do
    if (@response.empty?)
        puts "Response code: #{@response.code}";
        puts "Usuário não encontrado com o ID informado";
    else
        puts "Response code: #{@response.code}";
        puts "Response body: #{@response.body}";
    end
end


Quando('realizar uma requisicao POST para cadastrar um usuario') do
    # @response = HTTParty.post(@base_uri, @body);
    # puts @user.criarUser;
    @response = @user.postUser;
end

Então('o usuario sera cadastrado com sucesso') do
    if (@response.empty?)
        puts "Response code: #{@response.code}";
        puts "Não foi possivél realizar o cadastro do Usuário!";
    else
        puts "Response code: #{@response.code}";
        puts "Response body: #{@response.body}";
    end
end