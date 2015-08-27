package condominion

import java.text.SimpleDateFormat;
import java.util.Calendar;

class Expediente {

	private SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
	
	public void registrarEntrada(Funcionario funcionario){
		Calendar calendar = Calendar.getInstance();
		System.out.println("Funcionario [ "+funcionario.nome+" ] entrou as "+sdf.format(calendar.getTime()));
	}
	
	public void registrarSaida(Funcionario funcionario){
		Calendar calendar = Calendar.getInstance();
		System.out.println("Funcionario [ "+funcionario.nome+" ] saiu as "+sdf.format(calendar.getTime()));
	}
	
    static constraints = {
    }
}
