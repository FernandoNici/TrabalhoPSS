package condominion

class Mudanca {
	Condomino morador;
	String bloco;
	String apartamento;
	String rg;
	String cpf;
	String telefone;
	String email;
	
    static constraints = {
		cpf unique:true, blank: false
		email email:true, unique:true
		morador nullable:false, blank: false
    }
}
