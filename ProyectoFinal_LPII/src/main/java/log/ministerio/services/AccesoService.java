package log.ministerio.services;

import java.util.List;

import log.ministerio.entidad.Acceso;
import log.ministerio.fabrica.DAOFactory;
import log.ministerio.interfaces.AccesoInterfaceDAO;

public class AccesoService {
	private DAOFactory fabrica = DAOFactory.getDAOFactory(1);
	private AccesoInterfaceDAO objAcceso=fabrica.getAccesoInterfaceDAO();
	
	public int RegistrarAcceso(Acceso bean) {
		return objAcceso.Save(bean);
	}
	public int ActualizarAcceso(Acceso bean) {
		return objAcceso.Update(bean);
	}
	public int EliminarAcceso(int codigo) {
		return objAcceso.Delete(codigo);
	}
	public List<Acceso> ListarAccesos(){
		return objAcceso.listAll();
	}
	public List<Acceso> ListarMenusPor_Usuario(int codigoUsu){
		return objAcceso.ListarMenu_PorUsuario(codigoUsu);
	}
}
