package log.ministerio.fabrica;

import log.ministerio.dao.MySqlAccesoDAO;
import log.ministerio.dao.MySqlMenuDAO;
import log.ministerio.dao.MySqlUsuarioDAO;
import log.ministerio.interfaces.AccesoInterfaceDAO;
import log.ministerio.interfaces.MenuInterfaceDAO;
import log.ministerio.interfaces.UsuarioInterfaceDAO;

public class MySqlDAOFactory extends DAOFactory {

	@Override
	public UsuarioInterfaceDAO getUsuarioInterfaceDAO() {
		// TODO Auto-generated method stub
		return new MySqlUsuarioDAO();
	}

	@Override
	public MenuInterfaceDAO getMenuInterfaceDAO() {
		// TODO Auto-generated method stub
		return new MySqlMenuDAO();
	}

	@Override
	public AccesoInterfaceDAO getAccesoInterfaceDAO() {
		// TODO Auto-generated method stub
		return new MySqlAccesoDAO();
	}

}
