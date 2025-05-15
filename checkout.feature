            #language: pt
            Funcionalidade: Tela de cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que estou na tela de checkout de cadastro

            Cenário: Validar cadastro de checkout preenchendo campos obrigatórios
            Quando preencho todos os campos obrigatórios com dados válidos
            E clico no botão "Finalizar compra"
            Então verifico que a compra foi concluída com sucesso

            Esquema do Cenário: Validar cadastro de checkout sem preencher campos obrigatórios
            Quando preencho todos os campos obrigatórios exceto o campo <campo>
            E clico no botão "Finalizar compra"
            Então verifico a mensagem <mensagem> de erro

            Exemplos:
            | campo                | mensagem                                   |
            | "Nome"               | "O campo Nome é obrigatório"               |
            | "Sobrenome"          | "O campo Sobrenome é obrigatório"          |
            | "País"               | "O campo País é obrigatório"               |
            | "Endereço"           | "O campo Endereço é obrigatório"           |
            | "Cidade"             | "O campo Cidade é obrigatório"             |
            | "CEP"                | "O campo CEP é obrigatório"                |
            | "Telefone"           | "O campo Telefone é obrigatório"           |
            | "Endereço de e-mail" | "O campo Endereço de e-mail é obrigatório" |

        Cenário: E-mail com formato inválido
        When preencho todos os campos obrigatórios, tendo o campo "email" preenchido com um formato inválido
        And clico no botão "Finalizar compra"
        Then é exibida a mensagem "E-mail com formato inválido"