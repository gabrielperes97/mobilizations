#language: pt
Caracteristica: Comentar em uma meta
    Pode-se comentar em alguma publicação feita em alguma meta

Cenário: Comentar em uma meta
    Dado o usuário logado
    E estando na página inicial de alguma meta
    Quando o usuário clica no link "Responder" em algum post
    E aparece o campo "Responda"
    E preenche o campo Responda
    E pressiona a tecla ENTER
    Então a mensagem é publicada 
    E aparece a resposta nas respostas daquele post