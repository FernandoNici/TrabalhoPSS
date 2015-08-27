import comum.Permissao;
import comum.Usuario;
import comum.UsuarioPermissao;

class BootStrap {

    def init = { servletContext ->
		
		Permissao admin = Permissao.findByAuthority("ADMIN")
		if (admin == null){
			admin = new Permissao(authority: "ADMIN").save(flush:true)
		}
		Permissao usuarioEmpregado = Permissao.findByAuthority("EMPREGADO")
		if (usuarioEmpregado == null){
			usuarioEmpregado = new Permissao(authority: "EMPREGADO").save(flush:true)
		}
		Permissao usuarioMorador = Permissao.findByAuthority("MORADOR")
		if (usuarioMorador == null){
			usuarioMorador = new Permissao(authority: "MORADOR").save(flush:true)
		}
		
		Usuario administrador = Usuario.findByUsername("administrador")
		if (administrador == null){
			administrador = new Usuario(username: "administrador", password: "123", 
				enabled: true, accountExpired: false, accountLocked: false, 
				passwordExpired: false).save(flush:true)
		}
		Usuario morador = Usuario.findByUsername("morador")
		if (morador == null){
			morador = new Usuario(username: "morador", password: "123",
				enabled: true, accountExpired: false, accountLocked: false,
				passwordExpired: false).save(flush:true)
		}
		Usuario funcionario = Usuario.findByUsername("funcionario")
		if (funcionario == null){
			funcionario = new Usuario(username: "funcionario", password: "123",
				enabled: true, accountExpired: false, accountLocked: false,
				passwordExpired: false).save(flush:true)
		}
		
		if (UsuarioPermissao.findByUsuarioAndPermissao(administrador,admin) == null)
		{
			new UsuarioPermissao(usuario: administrador, permissao: admin).save(flush:true)
		}
		if (UsuarioPermissao.findByUsuarioAndPermissao(morador,usuarioMorador) == null)
		{
			new UsuarioPermissao(usuario: morador, permissao: usuarioMorador).save(flush:true)
		}
		if (UsuarioPermissao.findByUsuarioAndPermissao(funcionario,usuarioEmpregado) == null)
		{
			new UsuarioPermissao(usuario: funcionario, permissao: usuarioEmpregado).save(flush:true)
		}
		
    }
	
    def destroy = {
    }
}
