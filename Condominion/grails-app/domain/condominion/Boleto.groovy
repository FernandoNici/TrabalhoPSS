package condominion

class Boleto {
	String sacado
	String cedente
	double valor
	String vencimento
	int nossoNumero
	
    static constraints = {
		sacado blanck:false
		cedente blanck:false
			
    }
}
