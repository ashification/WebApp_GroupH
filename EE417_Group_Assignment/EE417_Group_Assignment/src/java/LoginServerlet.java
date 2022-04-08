//import java.sql.PreparedStatement;
import java.sql.*;
//import com.mysql.*;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SelectServlet
 */
@WebServlet("/LoginServerlet")
public class LoginServerlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServerlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @return 
	 * @return 
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
     
		    PrintWriter out = response.getWriter();
		     //link for url
		     String link = "";
		
		Connection con = null;
        String JDBCUrl = "jdbc:mysql://ee417.crxkzf89o3fh.eu-west-1.rds.amazonaws.com:3306/testdb";
        String username = "ee417";
        String password = "ee417";

        try {
            System.out.println("\nConnecting to the SSD Database......");
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(JDBCUrl, username, password);
        }
        catch (Exception e) {
            System.out.println("\nAn error has occurred during the connection phase!  This is most likely due to your CLASSPATH being set wrong and the"
                    + "  classes unable to be found.  Otherwise the database itself may be down.  Try telneting to port 3306 and see if it is up!");
            e.printStackTrace();
            System.exit(0);
        }   
        
      //creating variables and initializing them with the values obtained from the form
        String loginusername = request.getParameter("username");
        String loginpassword = request.getParameter("password");
        String userole = null;


	 try {     		  
     			 System.out.println("\nConnection Successful..... creating statement....");   
			 	 PreparedStatement stmt = con.prepareStatement("SELECT roles FROM testdb.GroupH_Accounts WHERE username = ? and passwords = ?");
				 stmt.setString(1, loginusername);
				 stmt.setString(2, loginpassword);
	        	 System.out.println(stmt);
	            
	        	 ResultSet rs = stmt.executeQuery();
		         System.out.println("\nQuery Executed");
// 	             System.out.println(rs);
			   
 	            if(rs.next()) {
 	            	System.out.println("\nExtracting the user role");
 	            	userole = rs.getString(1); 
 	            }
	            
	            System.out.println("\nGetting user roles.....");
	            System.out.println(userole);
	            //succesful log in with parameters
		    	
		    	 //session loaded
		    	 HttpSession session = request.getSession();
		    	 //session added to userOBJ
		    	 session.setAttribute("userObj", stmt);  // put the OBJECT on the session
		    	 
		    	 //if user is admin blogsadmin is loaded         
				 if (userole.equals("admin")) {
			         response.sendRedirect("IndexAdmin.jsp");
			     } 
		    	 //if user is not admin normal blogs is loaded
				 else {
			         response.sendRedirect("IndexUser.jsp");
			     }
	
					/*
					 * System.out.println("\nConnection Successful..... creating statement....");
					 * response.sendRedirect("RestockAdmin.jsp");
					 */
		 }
     	
	   
	     
        catch (SQLException e) {
	     System.out.println("\nAn error has occurred during the Statement/ResultSet phase.  Please check the syntax and study the Exception details!");
            while (e != null) {
	         System.out.println(e.getMessage());
                e = e.getNextException();
	     }
            System.exit(0);
        }

		/*
		 * finally { try { if (rs != null) rs.close(); if (stmt != null) stmt.close();
		 * if (con != null) con.close(); } catch (Exception ex) { System.out.
		 * println("An error occurred while closing down connection/statement"); } }
		 */
	}

	private void printSQLException(SQLException e) {
		// TODO Auto-generated method stub
		
	}

}
