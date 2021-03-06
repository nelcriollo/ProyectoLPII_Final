package log.ministerio.interfaces;

import java.util.List;

import log.ministerio.entidad.Acceso;
import log.ministerio.entidad.Menu;

public interface AccesoInterfaceDAO {
	
	public int Save(Acceso bean);
	public int Update(Acceso bean);
	public int Delete(int cod);
	public Acceso findById(int cod);
	public List<Acceso> listAll();
	public List<Acceso> ListarMenu_PorUsuario(int codUsu);

}
