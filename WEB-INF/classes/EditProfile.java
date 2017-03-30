import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Edit_Profile
 */
@WebServlet("/EditProfile")
public class EditProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditProfile() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		Connection c=null;
    String email = null;
    HttpSession session=request.getSession(true);  
    if(session!=null)  
       email = (String)session.getAttribute("member");  
    System.out.println(email); //for checking

        String name=request.getParameter("name");
        String pincode=request.getParameter("pin");
        String contact=request.getParameter("contact");
        String diagonostic=request.getParameter("diagonostic");
        String address=request.getParameter("adr");
        String password=request.getParameter("password");
        

        response.setContentType("text/html");

        PrintWriter out = response.getWriter();
  		  try{
  			/*if(!new_password.equals(confirm_new_password))
  			 {
  			   	request.setAttribute("Response","Passwords do not match");
				    getServletContext().getNamedDispatcher("member").forward(request,response);
  			 }*/
   	    Connection conn=db.getConnect();
   	     	//Statement st=conn.createStatement();
   	     	String query = "update user set nam=?, pin=?, diag=?, address=?, pwd=?, contact=? where email ='"+email+"';";
   	     	PreparedStatement stmt = conn.prepareStatement(query);
   	     	stmt.setString(1, name);
   	     	stmt.setString(2, pincode);
   	     	stmt.setString(3, diagonostic);
          stmt.setString(4, address);
          stmt.setString(5, password);//use if else statement if new password null
          stmt.setString(6, contact);

   	     	int n=stmt.executeUpdate();
          if(n==0)
          {
            System.out.println("Can't be updated, check code");
          }
          else
          {
            System.out.println("updated");
          }

   	      response.sendRedirect("indexL.jsp");
   	     	
          }catch(Exception e){
            	out.println("Exception"+e.getMessage()+e.toString());
            }
            finally{
            	try{
            		if(c!=null)
            			c.close();
            	}catch(Exception e){
            		out.println("Exception closing the connection"+e.getMessage());
            	}
            
            }
	}
	}


