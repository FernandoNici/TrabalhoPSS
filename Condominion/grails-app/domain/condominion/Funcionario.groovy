package condominion

class Funcionario {
	String cpf
	String nome
	
    static constraints = {
		nome  nullable:false; blanck:false
    }
}
