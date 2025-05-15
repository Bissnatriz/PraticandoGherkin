#language: pt
Funcionalidade: Login na plataforma
    Como cliente da EBAC-SHOP
    Quero fazer o login (autenticação) na plataforma
    Para visualizar meus pedidos


    Contexto:
        Dado que eu estou na tela de login

    Cenário: Login com sucesso
        Quando eu preencho os campos obrigatórios com dados válidos
        E clico no botão "Login"
        Então verifico que sou direcionada para a tela de checkout

    Esquema do Cenário: Login inválido
        Quando preencho o <user> e <senha>
        E clico no botão "Login"
        Então é exibida a <mensagem> de erro

        Exemplos:
            | user               | senha          | mensagem                     |
            | "biaErro"          | "Abc123@@"     | "Usuário ou senha inválidos" |
            | "biateste.com.br"  | "Abc123@@"     | "Usuário ou senha inválidos" |
            | "bia@teste.com.br" | "ErroAbc123@@" | "Usuário ou senha inválidos" |
