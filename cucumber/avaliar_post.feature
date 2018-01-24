#language: pt
Caracteristica: Avaliar post
    Os usuários podem interagir com os posts através de reações de positivo e negativo

Esquema do Cenário: Avaliar um post
    Dado um usuário logado 
    E estando em algum mural
    Quando o usuário seleciona sua avaliação
    Então incrementa o contador da avaliação selecionada
    E a avaliação selecionada fica em destaque

    Exemplos:
        |   positivo    |
        |   negativo    |

