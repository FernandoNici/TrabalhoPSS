package condominion

class Despesa {
	String tipoDespesa
	double valor
	Date data
	String origem
	
    static constraints = {
		tipoDespesa nullable:false; blanck:false
		valor min:0d
		
    }
}
