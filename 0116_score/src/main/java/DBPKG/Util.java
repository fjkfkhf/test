package DBPKG;
import java.sql.*;

public class Util {
	public static Connection getConnection() throws Exception {
		Class.forName("oracle.jdbc.OracleDriver");
		Connection conn = DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1521:xe",
					"System",
					"1234"
				);
		
		return conn;
	}
}
