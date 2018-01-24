#language: pt
Caracteristica: Progresso Meta
	Como um usuário logado e participante da mobilização, quero poder visualizar as metas e acompanhar de forma detalhada o progresso de uma meta.

Esquema do Cenário: Acompanhar progresso da Meta
	Dado um usuario logado e participante da mobilização
	Quando clica no botão Ver Todas as metas
	E acessa a tela <tela>
	E clica em uma meta especifica <meta>
	Então o usuário visualiza todas as informações e o progresso daquela meta
	
	Exemplos:
		| tela		| meta					|
		| Metas 	| Arrecadar 1 mil reais	|