package condominion

import java.text.SimpleDateFormat;
import java.util.Calendar;

class ControlaExpediente {
	private SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
	
	public void registra(Funcionario funcionario, boolean entrada){
		Calendar calendar = Calendar.getInstance();
		String acao = "saiu";
		if (entrada){
			acao = "entrou";
		}
		System.out.println("(Novo) Funcionario [ "+funcionario.getNome()+" ] "+acao+" as "+sdf.format(calendar.getTime()));
	}

    static constraints = {
    }
}
