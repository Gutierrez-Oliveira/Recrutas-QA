#language: pt

Funcionalidade: Efetuar compra
    Sendo que esteja logado no site 
    quero realizar uma compra no cartão de crédito
    e consultar no histórico de pedidos

    @compra
    Cenario: Realizar uma compra no cartão de crédito


        Dado que acesse a página de login
        Quando submeto minhas credenciais com "testeqa@qaninja.com.br" e "pwd123"
        E efetuo a compra de um produto masculino
        Entao valido que a compra está no historico de pedidos
