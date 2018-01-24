#language: pt
Caracteristica: Votar em alguma meta
    Vota-se em uma meta para aprová-la e transformá-la em uma meta ativa

Esquema do Cenário: Votar em uma meta
    Dado um usuário logado
    E estando na página Metas em Avaliação
    Quando o usuário seleciona uma meta em Avaliação
    E entra na pagina daquela meta
    E seleciona sua avaliação <avaliacao>
    Então incrementa o contador da avaliação selecionada

    Exemplos:
        |   avaliacao   |
        |   Aprovar     |
        |   Reprovar    |

Cenário: Administrador aprovar meta
    Dado um usuário administrativo logado
    E estando na página Metas em Avaliação
    Quando o usuário clica em aprovar meta
    Então aparece a mensagem meta aprovada
    E ela aparece na seção de metas aprovadas