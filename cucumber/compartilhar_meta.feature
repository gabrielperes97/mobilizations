#language: pt
Caracteristica: Compartilhar meta em outras redes sociais
	Como um usuário logado e participante da mobilização, quero poder compartilhar uma meta para ajudar a alcançar seu objetivo.

Esquema do Cenário: Compartilhar meta em uma rede social
	Dado um usuario logado e participante da mobilização
	Quando clica na Meta
	E acessa a tela <tela>
	E clica no botão de alguma das redes sociais
	E acessa a tela de compartilhamento da rede social confirmando o compartilhamento
	Então o usuário retorna a tela <tela>
	
	Exemplos:
		| tela				|
		| Dados da Meta 	|