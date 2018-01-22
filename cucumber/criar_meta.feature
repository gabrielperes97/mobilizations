#language: pt
Caracteristica: Criar uma meta
	Um usuario qualquer pode sugerir uma meta
	Um administrador pode inserir uma meta

Esquema do Cenário: Sugerir uma meta
	Dado um usuario <usuario> logado
	Quando clica no botão Sugerir Meta
	E acessa o formulário de Sugerir Meta "<tela>"
	E preenche o campo com o nome da meta <nome_meta>
	E preenche o campo com a descrição da meta <descricao_meta>
	E seleciona o tipo da meta <tipo_meta>
		Quando o tipo da meta for um contador 
		Entao preenche o campo com o limite daquela meta <limite>
	E clica no botão Salvar
	Então o usuario visualiza a mensagem de meta salva com sucesso

	Exemplos:
		|	usuario	|	tela			|	nome_meta	|	descricao_meta	|	tipo_meta	|	limite	|
		|	jão		| Sugerir Meta 		|	Afeta Mina	| 	Cozinhar		|	Longo 		|	céu		|