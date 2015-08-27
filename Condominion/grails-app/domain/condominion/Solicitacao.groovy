package condominion

import comum.Usuario
import java.util.Date;

class Solicitacao {
	String tipoSolicitacao;
	String descricao;
	Date dataSolicitacao;
	Usuario usuario;
	boolean status;
	
	static constraints = {
		tipoSolicitacao inList:["Aluguel das depend�ncias", "Mudan�a", "Manuten��o predial"]
	}
	
}