package condominion

class ExpedienteAdapater extends Expediente{
	ControlaExpediente expediente;
	
	public ControleDePontoAdapter(){
		expediente= new ControlaExpediente();
	}
	
	@Override
	public void registrarEntrada(Funcionario funcionario) {
		expediente.registra(funcionario, Boolean.TRUE);
	}
	
	@Override
	public void registrarSaida(Funcionario funcionario) {
		expediente.registra(funcionario, Boolean.FALSE);
	}
    static constraints = {
    }
}
