Feature: Configurar produto
    Como cliente da EBAC-SHOP
    Quero configurar meu produto de acordo com meu tamanho e gosto
    E escolher a quantidade
    Para depois inserir no carrinho

    Background:
        Given que estou na EBAC SHOP

    Scenario Outline: mandatory color field
        When seleciono todos os campos obrigatórios, exceto o campo <campo>
        And clico no botão "Comprar"
        Then é exibida a mensagem <mensagem>

            | campo      | mensagem                            |
            | cor        | "O campo cor é obrigatório!"        |
            | tamanho    | "O campo tamanho é obrigatório!"    |
            | quantidade | "O campo quantidade é obrigatório!" |

    Scenario Outline: Quantidade válida de itens no carrinho
        Given seleciono os campos obrigatórios, com a quantidade de <qtd> itens
        And clico no botão "Comprar"
        Then verifico que sou direcionada para a tela de checkout
        Examples:
            | qtd  |
            | "1"  |
            | "5"  |
            | "9"  |
            | "10" |

    Scenario Outline: Quantidade inválida de 11 itens no carrinho
        Given seleciono os campos obrigatórios, com a quantidade de 11 itens
        And clico no botão "Comprar"
        Then verifico a <mensagemQtd11> de erro

        Examples:
            | qtd  | mensagemQtd11                                 |
            | "11" | "Apenas 10 produtos por venda são permitidos" |
            | "12" | "Apenas 10 produtos por venda são permitidos" |
            | "15" | "Apenas 10 produtos por venda são permitidos" |

    Scenario: Validar botão "Limpar"
        When seleciono todos os campos obrigatórios
        And clico no botão "Limpar"
        Then verifico que os campos foram limpos, voltando ao seu estado original










