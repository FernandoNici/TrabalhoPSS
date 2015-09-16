package condominion

class Ocorrencia {
	String assunto
	String textoOcorrencia
	Date data
	String hora
	
	
    static constraints = {
		assunto nullable:false; blanck:false
		textoOcorrencia nullable:false; blanck:false
		data min: new Date()
		hora blanck:false
    }
}
