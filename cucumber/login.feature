#language: pt
Caracteristica: Login
	Como um usuário, eu quero acessar a tela de Login e escolher o metodo de autenticação para poder logar-se no sistema

Esquema do Cenário: Login e autenticação
	Dado um usuario desconhecido
	Quando clica no botão Acessar Conta
	E acessa a tela de Login <tela>
	E escolhe o metodo de autenticação <metodo_autent>
		Quando o metodo de autenticação for Usuário e Senha
		E preenche o campo email <email>
		E preenche o campo senha <senha>
		E clica no botão Entrar
		Então o usuário visualiza a mensagem de Autenticado com sucesso
		Quando o metodo de autenticação for Facebook
		E clica em aceitar as condições de uso
		Então o usuário visualiza a mensagem de Autenticado com sucesso
	Então o usuário visualiza a tela <link>
	
	Exemplos:
		| tela			|	metodo_autent	|	email	|	senha	| 		link			|
		| Login 		|	Usuário e Senha	|	jão		| abacate 	| Home_do_usuario.html	|