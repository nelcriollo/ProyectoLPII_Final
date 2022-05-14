package log.ministerio.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MySqlConexion {
	
	public static Connection getConectar() {
		Connection cn=null;
		try {
			String url,user,pass;
			//carga de la clase que se encuentra en el jar "mysql-connector-java-8.0.21.jar"
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			//cambia el nro de tu puerto.
			url="jdbc:mysql://localhost:3307/MINISTERIOPUBLICO_GLOGISTICA?serverTimezone=UTC";
			user="root";
			pass=" ";  //Coloca tu contrase�a
			
			//establacer la conexi�n a la BD. 
			cn=DriverManager.getConnection(url,user,pass);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
		return cn;
	}
}