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
	E seleciona o prazo da meta <prazo>
	E clica no botão Sugerir
	Então o usuario visualiza a mensagem de meta sugerida com sucesso

	Exemplos:
		|	usuario	|	tela			|	nome_meta	|	descricao_meta	|	tipo_meta	|	limite	|	prazo		|
		|	jão		| Sugerir Meta 		|	Afeta Mina	| 	Cozinhar		|	Longo 		|	céu		|	60 dias		|

Esquema do Cenário: Inserir uma meta
	Dado um usuário <usuario> administrativo logado
	Quando clica no botão Sugerir Meta
	E acessa o formulário de Sugerir Meta "<tela>"
	E preenche o campo com o nome da meta <nome_meta>
	E preenche o campo com a descrição da meta <descricao_meta>
	E seleciona o tipo da meta <tipo_meta>
		Quando o tipo da meta for um contador 
		Entao preenche o campo com o limite daquela meta <limite>
	E seleciona o prazo da meta <prazo>
	E clica no botão Inserir Imediatamente
	Então o usuario visualiza a mensagem de meta sugerida com sucesso

	Exemplos:
		|	usuario	|	tela			|	nome_meta	|	descricao_meta	|	tipo_meta	|	limite	|	prazo		|
		|	admin	| Sugerir Meta 		|	Afeta Mina	| 	Cozinhar		|	Longo 		|	céu		|	60 dias		|
