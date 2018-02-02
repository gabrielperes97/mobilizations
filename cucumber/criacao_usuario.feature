#language: pt 
Caracteristica: Criar um usuário
    Pode-se criar um usuário a partir do seu email ou a partir de sua conta no facebook

Esquema do Cenário: Criar usuário por email
    Dado um usuário deslogado
    E estando na página principal Ou na página de login
    Quando este clica no botão Inscrever-se
    E acessa o formulário de cadastro de usuário
    E preenche o campo nome <nome>
    E preenche o campo email <email>
    E preenche o campo senha <senha>
    E clica em Cadastrar
    Então o sistema o enviará um email de confimação
    Quando o usuário clicar no link de confirmação no email
    Então o usuário vê seu nome no espaço onde mostra o usuário logado

    Exemplos:
        |   nome    |   email           |   senha       |
        |  jão      |   jao@jaomail.com |   jao131295   |

Cenário: Criar usuário pelo facebook
    Dado um usuário deslogado
    E estando na página principal Ou na página de login
    Quando este clica no botão login pelo facebook
    E acessa uma página do página do facebook
    E preeche o campo usuario com seu usuario do facebook
    E preeche o campo senha com sua senha do facebook
    E clica em Logar
    E aceita as permissões do aplicativo 
    Então o facebook redireciona de volta ao sistema
    E o usuário visualiza a mensagem de Cadastro efetuado
