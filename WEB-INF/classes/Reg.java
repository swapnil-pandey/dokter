

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
 * Servlet implementation class Reg
 */
@WebServlet("/Reg")
public class Reg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Reg() {
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
		
        String name=request.getParameter("name");
        String pswd=request.getParameter("password");
        String email=request.getParameter("email");
        String confirm=request.getParameter("confirm");
        
  		response.setContentType("text/html");
		HttpSession session=request.getSession(true);
        PrintWriter out = response.getWriter();
  		try{
  			if(!pswd.equals(confirm))
  			{
  				request.setAttribute("Response","Passwords do not match");
				getServletContext().getNamedDispatcher("member").forward(request,response);
  			}
   	     	Connection conn=db.getConnect();
   	     	//Statement st=conn.createStatement();
   	     	String query = "insert into user(nam,email,pwd) values (?,?,?)";
   	     	PreparedStatement stmt = conn.prepareStatement(query);
   	     	stmt.setString(1, name);
   	     	stmt.setString(2, email);
   	     	stmt.setString(3, pswd);
   	     	int n=stmt.executeUpdate();
   	     	if(n==0)
   	     	{
   	     		request.setAttribute("Response","Username already exists");
   	     		getServletContext().getNamedDispatcher("member").forward(request,response);
   	     	}
   	     	else
   	     	{
   	     		session.setAttribute("member",email);
   	     		response.sendRedirect("signup2.html");
   	     		System.out.println("inserted");
   	     	}
            //String query = new String("select * from dokter where id=" +loginid+ " and name='"+pswd+"'"); 
			
					
          
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


