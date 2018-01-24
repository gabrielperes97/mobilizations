#language: pt
Caracteristica: Convidar
	Como um usuário logado e participante da mobilização, quero poder adicionar amigos para participar da mesma.

Esquema do Cenário: Convidar amigos para mobilização
	Dado um usuario logado e participante da mobilização
	Quando clica no botão Dados da Mobilização
	E acessa a tela de Dados da Mobilização <tela>
	Quando clica em Adicionar Pessoa
	E acessa a tela de Amigos do Facebook
	E seleciona os amigos para quem enviar o convite
	E clica em Enviar
	Então o usuário visualiza uma mensagem de confirmação e retorna a tela Dados da Mobilização <tela>
	
	Exemplos:
		| tela					|
		| Dados da Mobilização 	|