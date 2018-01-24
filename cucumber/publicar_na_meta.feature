#language: pt
Caracteristica: Ajudar a completar a meta
	Como um usuário logado e participante da mobilização, quero poder fazer uma publicação que ajude a alcançar o objetivo final de uma meta.

Esquema do Cenário: Publicar na meta
	Dado um usuario logado e participante da mobilização
	Quando seleciona uma meta <meta>
	E clica no botão Publicar sobre a Meta
	E preenche a descrição <descrição> da publicação
	E clica no botão Enviar
	Então o o usuário visualiza uma mensagem de confirmação e retorna a tela <tela>
	
	Exemplos:
		|	meta			|	descrição					| 	tela	|
		|	limpar a rua	|	Hoje eu catei latinha xD	|	Metas	|
		
Esquema do Cenário: Confirmar a publicação na meta
	Dado um administrador <usuario> da meta
	Quando seleciona uma meta <meta>
	E clica no botão Avaliar Publicações
	E visualiza as publicações pendentes sobre a meta
	E clica em Confirmar/Negar <opção>
	Então retorna a tela <tela>
	
	Exemplos:
		|	usuario		|	meta			|	opção														| tela					|
		|	pedrinho	|	limpar a rua	|Confirmar publica no mural da meta Negar exclui a publicação	| publicações pendentes	|	