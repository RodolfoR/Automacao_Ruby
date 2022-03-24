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



