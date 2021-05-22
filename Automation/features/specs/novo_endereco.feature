#language: pt

Funcionalidade: Adicionar novo endereço
    Sendo que esteja logado
    quero adicionar um novo endereço
    para novas compras

    Cenario: Adicionar novo endereço para novas compras

        Dado que acesse a página de login
        Quando submeto meus dados "testeqa@qaninja.com.br" e "pwd123"
        E adiciono novo endereço
        Entao valido que está disponivel