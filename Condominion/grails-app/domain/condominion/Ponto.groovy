package condominion

import comum.Usuario
import java.sql.Time
import java.text.SimpleDateFormat
import java.util.Date

class Ponto {

	String horario = formataHora()
	Date data = new Date()
	String entradaSaida
	Usuario usuario
	
	static constraints = {
		
	}
	def formataHora(){
		Date data = new Date()
		SimpleDateFormat sdf= new SimpleDateFormat("HH:mm:ss");
		sdf.format(data)
	}
}