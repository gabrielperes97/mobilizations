#language: pt
Caracteristica: Publicar em meta
    Pode-se publicar um post em uma meta, similar a um evento no facebook

Esquema do Cenário: Publicar em uma meta
    Dado um usuário logado
    E estando na página inicial de alguma meta
    Quando o usuário preeche o campo Pulique Algo <post>
    E clica em Publicar
    Então sua mensagem é publicada 
    E aparace na mural da meta. 

    Exemplos:
        |   post                |
        |   Vocês viram isso ?  |

