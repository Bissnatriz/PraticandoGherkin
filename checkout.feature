Feature: Tela de cadastro - Checkout
    Como cliente da EBAC-SHOP
    Quero fazer concluir meu cadastro
    Para finalizar minha compra

    Background:
        Given que estou na tela de checkout de cadastro

    Scenario: Validar cadastro de checkout preenchendo campos obrigatórios
        When preencho todos os campos obrigatórios com dados válidos
        And clico no botão "Finalizar compra"
        Then verifico que a compra foi concluída com sucesso

    Scenario Outline: Validar cadastro de checkout sem preencher campos obrigatórios
        When preencho todos os campos obrigatórios exceto o campo <campo>
        And clico no botão "Finalizar compra"
        Then verifico a mensagem <mensagem> de erro

            | campo                | mensagem                                   |
            | "Nome"               | "O campo Nome é obrigatório"               |
            | "Sobrenome"          | "O campo Sobrenome é obrigatório"          |
            | "País"               | "O campo País é obrigatório"               |
            | "Endereço"           | "O campo Endereço é obrigatório"           |
            | "Cidade"             | "O campo Cidade é obrigatório"             |
            | "CEP"                | "O campo CEP é obrigatório"                |
            | "Telefone"           | "O campo Telefone é obrigatório"           |
            | "Endereço de e-mail" | "O campo Endereço de e-mail é obrigatório" |

    Scenario: E-mail com formato inválido
        When preencho todos os campos obrigatórios, tendo o campo "email" preenchido com um formato inválido
        And clico no botão "Finalizar compra"
        Then é exibida a mensagem "E-mail com formato inválido"