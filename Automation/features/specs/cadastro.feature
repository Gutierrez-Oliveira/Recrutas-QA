#language: pt

Funcionalidade: Cadastro de usuário
    Sendo usuário quero me cadastrar no site

    @cadastro
    Cenario: Fazer cadastro com sucesso

        Dado que eu estou no página de cadastro
        Quando preencho os dados
        Então valido que o cadastro foi concluido