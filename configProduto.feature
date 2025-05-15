#language: pt
Funcionalidade: Configurar produto
    Como cliente da EBAC-SHOP
    Quero configurar meu produto de acordo com meu tamanho e gosto
    E escolher a quantidade
    Para depois inserir no carrinho

    Contexto:
        Dado que estou na EBAC SHOP

    Esquema do Cenário: mandatory color field
        Quando seleciono todos os campos obrigatórios, exceto o campo <campo>
        E clico no botão "Comprar"
        EntãoThen é exibida a mensagem <mensagem>
Exemplos:
            | campo      | mensagem                            |
            | cor        | "O campo cor é obrigatório!"        |
            | tamanho    | "O campo tamanho é obrigatório!"    |
            | quantidade | "O campo quantidade é obrigatório!" |

    Esquema do Cenário: Quantidade válida de itens no carrinho
        Quando seleciono os campos obrigatórios, com a quantidade de <qtd> itens
        E clico no botão "Comprar"
        Então verifico que sou direcionada para a tela de checkout

        Exemplos:
            | qtd  |
            | "1"  |
            | "5"  |
            | "9"  |
            | "10" |

    Esquema do Cenário: Quantidade inválida de 11 itens no carrinho
        Quando seleciono os campos obrigatórios, com a quantidade de 11 itens
        E clico no botão "Comprar"
        Então verifico a <mensagemQtd11> de erro

        Exemplos:
            | qtd  | mensagemQtd11                                 |
            | "11" | "Apenas 10 produtos por venda são permitidos" |
            | "12" | "Apenas 10 produtos por venda são permitidos" |
            | "15" | "Apenas 10 produtos por venda são permitidos" |

    Cenário: Validar botão "Limpar"
        Quando seleciono todos os campos obrigatórios
        E clico no botão "Limpar"
        Então verifico que os campos foram limpos, voltando ao seu estado original










