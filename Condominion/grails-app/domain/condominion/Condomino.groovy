package condominion

class Condomino {
	String nome;
	String Apartamento;
	String Bloco;
	
	static hasMany = [solicitacao:Solicitacao, ocorrencia:Ocorrencia]
	
    static constraints = {
    }
}
