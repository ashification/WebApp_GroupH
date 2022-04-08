import java.beans.Statement;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RestockServlet
 */
@WebServlet("/RestockServlet")
public class RestockServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RestockServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
        response.getWriter().append("Served at: ").append(request.getContextPath());
		
		response.setContentType("text/html");
        //PrintWriter out = response.getWriter();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
	   response.setContentType("text/html");
		
	   //initializing variables and setting the path to the SQL server along with the username and password
	   Connection con = null;
       Statement stmt = null;
       ResultSet rs = null;
       String JDBCUrl = "jdbc:mysql://ee417.crxkzf89o3fh.eu-west-1.rds.amazonaws.com:3306/testdb";
       String username = "ee417";
       String password = "ee417";
       try {
    	   //checking if connection to the SQL server is successful 
           System.out.println("\nConnecting to the SSD Database......");
           Class.forName("com.mysql.cj.jdbc.Driver");
           con = DriverManager.getConnection(JDBCUrl, username, password);
       }
       catch (Exception e) {
    	   //error message if unable to connect to server
           System.out.println("\nAn error has occurred during the connection phase!  This is most likely due to your CLASSPATH being set wrong and the"
                   + "  classes unable to be found.  Otherwise the database itself may be down.  Try telneting to port 3306 and see if it is up!");
           e.printStackTrace();
           System.exit(0);
       }
       
       //creating variables and initializing them with the values obtained from the form
        String itemtype = request.getParameter("itemtype");
        String itemname = request.getParameter("itemname");
        String itemprice = request.getParameter("itemprice");
        String itemsummary = request.getParameter("itemsummary");

	 try {
		 //The parameters from the field were added to a new row in the register table stored in SQL database
		  PreparedStatement pstmt = con.prepareStatement("INSERT INTO testdb.computerworld_shopitems(itemtype, itemname, price, itemsummary) VALUES (?,?,?,?)");
				  pstmt.clearParameters();       // Clears any previous parameters
				  pstmt.setString(1, itemtype);
				  pstmt.setString(2, itemname);
				  pstmt.setString(3, itemprice);
				  pstmt.setString(4, itemsummary);
				  pstmt.executeUpdate();

		     System.out.println("\nConnection Successful..... creating statement....");
		     response.sendRedirect("RestockAdmin.jsp");   
     	     //stmt = (Statement) con.createStatement();
     	     //rs = ((java.sql.Statement) stmt).executeQuery("SELECT * FROM testdb.18104550Accounts");

//     	     while (rs.next())
//     	     {    System.out.println("\nName=" + rs.getString("FIRSTNAME") + " " + rs.getString("SURNAME"));
//    	     	  out.println("\nName=" + rs.getString("FIRSTNAME") + " " + rs.getString("SURNAME"));
//    	     	  }
	     
	 }
        catch (SQLException e) {
	     System.out.println("\nAn error has occurred during the Statement/ResultSet phase.  Please check the syntax and study the Exception details!");
            while (e != null) {
	         System.out.println(e.getMessage());
                e = e.getNextException();
	     }
            System.exit(0);
        }

        finally {
	     try {    
	         if (rs != null) rs.close();
		 //if (stmt != null) ((Connection) stmt).close();
		 if (con != null) con.close();
	     }
	     catch (Exception ex) {
	         System.out.println("An error occurred while closing down connection/statement"); 
            }
        }
	   
	   //stroring the username of the user as a cookie
       String s1 = request.getParameter("userName");
	   Cookie ck1 = new Cookie("name",s1);
	   
	   //adding the cookie to the response
	   response.addCookie(ck1);
		 
       //response is printed out
	   PrintWriter out = response.getWriter();
       
	   //successful registration message
       out.println("<html><head><title>Successful Registration</title></head>");

       
	   out.println("</body></html>");
       out.close();
       
		doGet(request, response);
	}

}
