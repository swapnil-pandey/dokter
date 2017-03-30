import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
public class db {
	// JDBC driver name and database URL
	   static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
	   static final String DB_URL = "jdbc:mysql://aar7vlleabv0a6.ckzbsltw7ygt.us-east-1.rds.amazonaws.com:12230/ebdb?user=master&password=rootroot";
	   //  Database credentials
	   static final String USER = "master";
	   static final String PASS = "rootroot";

	public static void main(String[] args) {
		db.getConnect();
	}
	
	public static Connection getConnect()
	{
		Connection conn = null;
	      Statement stmt = null;
		try
		{
				   
			      //STEP 2: Register JDBC driver
			      Class.forName("com.mysql.jdbc.Driver");

			      //STEP 3: Open a connection
			      System.out.println("Connecting to database...");
			      conn = DriverManager.getConnection(DB_URL,USER,PASS);
		}catch(Exception e)
		{
			e.printStackTrace();
			System.out.println(e);
		}return conn;
	}

}

