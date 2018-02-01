#language: pt

Caracteristica: Ganhar pontos

Cenário: Pontos por likes
	Dado um usuário qualquer
	Quando um usuário recebe um like em algum post em qualquer contexto
	então seu contador de pontos incrementa em 1

Cenário: Pontos por Compartilhamento em Redes sociais
	Dado um usuário qualquer
	Quando um usuário comparlha alguma meta em redes sociais
	Então seu contador de pontos incrementa em 10

Cenário: Pontos por Convidar um amigo
	Dado um usuário qualquer
	Quando um usuário convida um amigo e este se increve na mobilização
	Então seu contador de pontos incrementa em 50

Cenário: Pontos por ajudar em alguma meta
	Dado um usuário qualquer
	Quando o usuário ajuda em alguma meta
	Então seu contador de pontos incrementa em 500