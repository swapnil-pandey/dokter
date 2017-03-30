

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Connection c=null;
		
        String loginid=request.getParameter("email");
        String pswd=request.getParameter("password");
  		response.setContentType("text/html");
		HttpSession session=request.getSession(true);
        PrintWriter out = response.getWriter();
  		try{
   	     	Connection conn=db.getConnect();
   	     	Statement st=conn.createStatement();
            String query = new String("select * from user where email='" +loginid+ "' and pwd='"+pswd+"'"); 
			System.out.println("Query :"+query);
            ResultSet rs= st.executeQuery(query);
            if(rs.next())  {
					session.setAttribute("member",loginid);
					System.out.println("hello "+pswd+rs.getString("email"));
					response.sendRedirect("indexL.jsp");
            } else { 
					request.setAttribute("Response","Invalid User name and password");
					request.getRequestDispatcher("login.html").include(request, response);  

			}
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
