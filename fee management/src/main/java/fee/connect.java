package fee;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class connect{
    // JDBC connection parameters
    public static final String JDBC_URL = "jdbc:mysql://localhost:3306/fee";
    public static final String USERNAME = "root";
    public static final String PASSWORD = "Pramod@2003";
    public static final String DRIVER_CLASS = "com.mysql.cj.jdbc.Driver";

    // Method to establish database connection
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        // Load the JDBC driver
    	 Class.forName(DRIVER_CLASS);
    	 Connection con =DriverManager.getConnection(JDBC_URL, USERNAME, PASSWORD);
    	 String sql ="INSERT INTO accountant VALUES('SWARAJ3','SWARAJ3','SER','123','MUNBAI')";
    	 Statement st=con.createStatement();
    	 st.executeUpdate(sql);
    	 con.close();
    }
}
