#language: pt
Caracteristica: Denunciar postagem
    Um post qualquer pode ser denunciado

Cenário: Denunciar post
    Dado um usuário logado
    E estando no mural de alguma meta ou no mural principal
    Quando o usuário clica em denunciar em algum post
    Então uma mensagem é enviada para o administrador para ele verificar isto
    E aparece a mensagem denuncia efetuada

Esquema do Cenário: Analizar um post denunciado
    Dado um administrador logado
    E estando na página inicial
    Quando aparece uma notificação sobre alguma denuncia
    E o usuario clica nesta notificação
    E é redirecionado para a pagina desta publicação
    E seleciona sua avaliação <avaliacao>

    Exemplos:
        |   avaliacao   |
        |   Remover     |
        |   Ignorar     |