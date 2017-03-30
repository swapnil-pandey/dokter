import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.http.HttpSession;

public class ProfieDAO {

	private ProfileDetails pro;
	public ProfieDAO(ProfileDetails prof)
	{	
		this.pro=prof;
	}
	public ProfileDetails getProfile(String email)
	{
		Connection c=null;
		pro = new ProfileDetails();
  		try{
   	     	Connection conn=db.getConnect();
   	     	Statement st=conn.createStatement();
   	     	String query = "SELECT * FROM user where email = '"+email+"';"; 
			System.out.println("Query :"+query);
            ResultSet rs= st.executeQuery(query);
            if(rs.next())  {
					pro.setName(rs.getString("nam"));
					pro.setEmail(rs.getString("email"));
					pro.setContact(rs.getString("contact"));
					pro.setAddress(rs.getString("address"));
					pro.setPin(rs.getString("pin"));
					pro.setDiag(rs.getString("diag"));
					
            } else { 
					pro = null;
			}
            }catch(Exception e){
            	System.out.println("Exception"+e.getMessage()+e.toString());
            }
            finally{
            	try{
            		if(c!=null)
            			c.close();
            	}catch(Exception e){
            		System.out.println("Exception closing the connection"+e.getMessage());
            	}
            
            }
  		return pro;
	}
}
