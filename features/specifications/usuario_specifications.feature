# force_encoding("UTF-8")
# force_encoding(Encoding::UTF_8)
# language: pt

Funcionalidade: Gerenciar informacoes de usuarios
    Como um usuário do sistema
    Eu quero realizar as requisições na API
    Para conseguir manipular informações do cadastro de usuários

Esquema do Cenário: Get para recuperar um usuario pelo id
    Dado que possuo o endereco da api
    Quando realizo uma chamada GET users com o id <id_user>
    Então deve retornar o usuario com o id informado
    
    Exemplos:
    |id_user|
    |1      |
    |55     |
