#language: pt

Funcionalidade: Cadastro do usuário
    Sendo um visitante do site
    Posso fazer meu cadastro com nome, email e senha
    Para que eu possa anunciar meu veiculo usado

Contexto: Form de Cadastro
        Dado que estou na página de cadastro

@sprint1 @smoke1
Cenário: Cadastro simples
	
	Quando faço o meu cadastro com
		| nome  | Gerry           |
		| email | gerry@teste.com |
		| senha | 123456          |
	Então sou autenticado com sucesso

@temp
Esquema do Cenário: Tentativa de cadastro
	# Dado que estou na página de cadastro
	Quando faço o meu cadastro com:
		| nome  | <nome>  |
		| email | <email> |
		| senha | <senha> |
	Então devo ver a seguinte mensagem "<alerta>"

    Exemplos: 
	  | nome  | email           | senha  | mensagem                                |
      | Gerry | testes          | 123456 | Email inválido.                         |
      | Gerry | gerry@teste.com |        | Senha não informada.                    |
      |       | gerry@teste.com | 123456 | Nome não informado.                     |
      | Gerry | gerry@teste.com | 12345  | Senha deve ter pelo menos 6 caracteres. |

