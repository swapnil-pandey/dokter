

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/GetServer")
public class GetServer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetServer() {
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
		
        String start_time=request.getParameter("time");
        String date=request.getParameter("date");
        java.util.Date dt = new java.util.Date();
        //java.util.Date dt = new java.util.Date();
        java.text.SimpleDateFormat sdf =  new java.text.SimpleDateFormat("yyyy-MM-dd");
        
        String email=request.getParameter("email");
        
       /* DateFormat formatter = new SimpleDateFormat("hh:mm:ss");
        java.util.Date dates = formatter.parse(start_time);*/
        	System.out.println("zz");
        System.out.println(date);
        System.out.println(start_time);
        System.out.println(sdf.format(dt));
        
		HttpSession session=request.getSession(true);
  		try{
  			Connection con;
  			Class.forName("com.mysql.jdbc.Driver");

  			//STEP 3: Open a connection
  			System.out.println("Connecting to database...");
  			con = DriverManager.getConnection("jdbc:mysql://aar7vlleabv0a6.ckzbsltw7ygt.us-east-1.rds.amazonaws.com:12230/ebdb?user=master&password=rootroot","master","rootroot");


   	     	
            String query = "insert into time_table (email, booked_flag,start_time,date)values (?,?,?,?)";
            PreparedStatement stmt = con.prepareStatement(query);
            stmt.setString(1, email);
            stmt.setInt(2, 1);
            stmt.setString(3, start_time);
            stmt.setString(4, date);
            int n = stmt.executeUpdate();
            if(n==0)
            {
            	System.out.println("error in updating bookings");
            }
            else
            {
            	response.sendRedirect("booking.jsp");
            }
            
            
          
            }catch(Exception e){
            	e.printStackTrace();
            }
           
        
	}


	}
