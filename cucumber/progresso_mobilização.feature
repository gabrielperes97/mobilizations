#language: pt
Caracteristica: Progresso Mobilização
	Como um usuário logado e participante da mobilização, quero poder visualizar e acompanhar de forma detalhada o progresso da mobilização.

Esquema do Cenário: Acompanhar progresso da Mobilização
	Dado um usuario logado e participante da mobilização
	Quando clica no botão Dados da Mobilização
	E acessa a tela <tela>
	Então o usuário visualiza todas as informações (participantes, metas..) e o objetivo final da mobilização 
	
	Exemplos:
		| tela					|
		| Dados da Mobilização 	|