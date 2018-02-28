#language: pt
Caracteristica: Login
	Como um usuário, eu quero acessar a tela de Login e escolher o metodo de autenticação para poder logar-se no sistema

@javascript
Esquema do Cenario: Login e autenticacao
	Dado que eu acesse a pagina inicial 
	E estando deslogado
	Quando clica no botão Acessar Conta
	E acessa a tela de Login
	E preenche o campo email com "<email>"
	E preenche o campo senha com "<senha>"
	E clica no botão Entrar
	Então o usuário visualiza que está logado

	Exemplos:
		|	email				|	senha	|
		|gober@gmail.com|123321|