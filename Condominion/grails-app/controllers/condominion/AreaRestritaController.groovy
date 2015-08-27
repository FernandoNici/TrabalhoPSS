package condominion

class AreaRestritaController {

	def springSecurityService
	
    def index() { 
		logar()
	}
	
	def logar(){
		render(view: "/areaRestrita/logar")
	}
	
	def admin(){
		
		String usuario = springSecurityService.principal.username
		//if springSecurityService.principal.
		render(view: "/areaRestrita/admin", model: [usuario: usuario])
		//redirect(view: "")
	}
	def recuperar(){
		render( view: "/areaRestrita/recuperarSenha" );
	}
	def logout(){
		redirect(action: "logar")
	}
}
