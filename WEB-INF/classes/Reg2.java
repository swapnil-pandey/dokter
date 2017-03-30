

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class reg2
 */
@WebServlet("/Reg2")
public class Reg2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Reg2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Connection c=null;
		String email = null;
		HttpSession session=request.getSession(false);  
		if(session!=null)  
			 email = (String)session.getAttribute("member");  
		System.out.println(email);
		
        String adr=request.getParameter("adr");
        String pin=request.getParameter("pin");
        String contact=request.getParameter("contact");
        
  		response.setContentType("text/html");
        PrintWriter out = response.getWriter();
  		try{
  			Connection conn=db.getConnect();
   	     	//Statement st=conn.createStatement();
   	     	String query = "update user set contact=?, address=?, pin=? where email ='"+email+"';";
   	     	PreparedStatement stmt = conn.prepareStatement(query);
   	     	stmt.setString(1, contact);
   	     	stmt.setString(2, adr);
   	     	stmt.setString(3, pin);
   	     	int n=stmt.executeUpdate();
   	     	if(n==0)
   	     	{
   	     		//request.setAttribute("Response","Username already exists");
   	     		//getServletContext().getNamedDispatcher("member").forward(request,response);
   	     		System.out.println("cannot be updated!!!!");
   	     	}
   	     	else
   	     	{
   	     		
   	     		System.out.println("inserted");
   	     	}
            //String query = new String("select * from dokter where id=" +loginid+ " and name='"+pswd+"'"); 
			
					response.sendRedirect("indexL.html");
          
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


