#language: pt  
Caracteristica: Postar uma discussão
    Pode-se postar uma discussão em um canal geral, igual à uma publicação, mas não relacionada a nenhuma meta

Esquema do Cenário: Publicar uma discussão
    Dado um usuário logado
    E estando no mural inicial
    Quando o usuário selecionar Inicie uma discussão
    E preecher o campo de Inicie uma discussão <post>
    E clicar em Postar
    Então a discussão é postada
    E aparace no mural principal

    Exemplos:
        |   post                |
        |   Vocês viram isso ?  |
