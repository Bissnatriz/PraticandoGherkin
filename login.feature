Feature: Login na plataforma
    Como cliente da EBAC-SHOP
    Quero fazer o login (autenticação) na plataforma
    Para visualizar meus pedidos


    Background:
        Given que eu estou na tela de login

    Scenario: Login com sucesso
        When eu preencho os campos obrigatórios com dados válidos
        And clico no botão "Login"
        Then verifico que sou direcionada para a tela de checkout

    Scenario Outline: Login inválido
        When preencho o <user> e <senha>
        And clico no botão "Login"
        Then é exibida a <mensagem> de erro

        Examples:
            | user               | senha          | mensagem                     |
            | "biaErro"          | "Abc123@@"     | "Usuário ou senha inválidos" |
            | "biateste.com.br"  | "Abc123@@"     | "Usuário ou senha inválidos" |
            | "bia@teste.com.br" | "ErroAbc123@@" | "Usuário ou senha inválidos" |
