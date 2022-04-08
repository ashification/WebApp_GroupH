<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<!DOCTYPE html> <!--Indicates the document is a HTML-->
<html>
    <head> <!--The header of the file--->
        <meta name = "viewport" content="width=device-width, initial-scale=1.0">
        <!--Name of the webpage--->
        <title>
            Computer World
        </title>
        <!---This sets the page logo on the top as the websites logo--->
        <link rel="icon" type="image/x-icon" href="images/cw.JPG">
        <!--Stylesheet for the index page--->
        <link rel = "stylesheet" href="Stylesheets/style.css"> 
        <link rel = "stylesheet" href="Stylesheets/restock.css">
        <!---Fonts obtained from google fonts---> 
        <link rel="preconnect" href="https://fonts.googleapis.com"> 
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Play:wght@400;700&display=swap" rel="stylesheet">
        <!---The stylesheet for the special fonts used in the page---> 
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.7/css/all.css">
        <!---JavaScript file used for the menu bar--->
        <script src="JavaScript/app.js" defer></script>
    </head>

    <body>

        <!------Top header of the page with logo and index------->
        <!---This section was used to display the different options of the website and clicking on to these options would take the user to the respective page--->
        <section class="logo"> <!---Styles class for logo--->
            <a href = "index.html"><img src ="Images/cw.jpg"></a> <!---Clicking on the logo brings the user back to the index page--->
            <!---Dynamic Navigation Bar--->
            <a href="#" class="icon">
                <span class="bar"></span>
                <span class="bar"></span>
                <span class="bar"></span>
            </a>
            <div class = "nav-links"> <!---Styles class for nav bar--->
                <ul>
                    <li><a href = "IndexAdmin.jsp">HOME</a></li>
                    <li><a href = "AboutusAdmin.jsp">ABOUT US</a></li>
                    <li><a href = "ShopAdmin.jsp">SHOP</a></li>
                    <li><a href = "ReturnsAdmin.jsp">RETURNS</a></li>
                    <li><a href = "RestockAdmin.jsp">RESTOCK</a></li>
                    <li><a href = "Users.jsp">USERS</a></li>
                    <li><a href = "LogoutServlet">LOG OUT</a></li> <!---List of html webpages used with their links--->
                </ul>
            </div>
        </section>

        <!-----Background image with introduction page------>
        <!---This section was used to show the user what page they are on with an image and some comments on the page--->
        <!---This page allows the user to register and this will be stored in the backend in the future--->
        <section class = 'header_login'>
        <br></br>
            <div class = "introduction">
                <h1>List of All Stock </h1>
                <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://ee417.crxkzf89o3fh.eu-west-1.rds.amazonaws.com:3306/testdb"
         user = "ee417"  password = "ee417"/>
         
        <!-- Query to obtain all the values from the accounts table -->
      <sql:query dataSource = "${snapshot}" var = "result">
      SELECT * FROM testdb.computerworld_shopitems ;    </sql:query>
      
      <!-- Creating the table in the JSP file and setting the headers -->
      <table border = "1" width = "100%">
         <tr>
         	<th>INDEX</th>
            <th>TYPE</th>
            <th>NAME</th>
            <th>PRICE</th>
            <th>SUMMARY</th>
            <th>DATE</th>
            <th>Special Status</th>
            <th>Special Price</th>
            <th>Special Expiry</th>
         </tr>
         <!-- Adding the values from the table into the row of the JSP file in a foreach loop-->
        <c:forEach var = "row" items = "${result.rows}">
            <tr>
               <td><c:out value = "${row.deviceindex}"/></td>
               <td><c:out value = "${row.itemtype}"/></td>
               <td><c:out value = "${row.itemname}"/></td>
               <td><c:out value = "${row.price}"/></td>
               <td><c:out value = "${row.itemsummary}"/></td>
               <td><c:out value = "${row.dateadded}"/></td>
               <td><c:out value = "${row.itemspecial}"/></td>
               <td><c:out value = "${row.specialprice}"/></td>
               <td><c:out value = "${row.specialexpiry}"/></td>
               
            </tr>
         </c:forEach>
      </table>
       	<br></br>
                <h1>Add items to stock</h1>
                <div class="form">
                    <form name = "registration" onSubmit="" method="POST" action="RestockServlet">
                        
                        <li class="options">
                            <select name="itemtype" id="itemtype">
                            <option selected="" value="Default">Select Item Type</option>
                            <option value="PC">PC</option>
                            <option value="Laptop">Laptop</option>
                            <option value="Peripheral">Peripheral</option>
                            <option value="Game">Game</option>
                            </select>
                        </li>
                        <input type="text" id = "itemname" name = "itemname" placeholder="Enter Item Name" required>
                        <input type="text" id = "itemprice" name = "itemprice" placeholder="Enter Item Price" required>
                        <input type="text" id = "itemsummary" name = "itemsummary" placeholder="Enter Item Summary" required>

                 
                        <br/>
                        <button type="submit" class="ytlink">Register</button>
                    </form>
                </div>
            </div>
        </section>

        <!-----Options------>
        <!---This section shows the user all the different panels or sections availble for the user to browse--->
        <!---The options are set up so that they have hovering effects and when clicked the user is taken to the respective webpage--->

        <!-----Footer------>
        <!---This is the footer section and it has fontawsome symbols for the popular social media apps--->
        <!---Using styles it was given a grey background color--->
        <section class = "footer">
            <h4>Available on all social media platforms</h4>
            <div class="icons">
                <i class = "fab fa-facebook"></i>
                <i class = "fab fa-instagram"></i>
                <i class = "fab fa-twitter"></i>
                <i class = "fab fa-youtube"></i>
            </div>
        </section>
    </body>
</html>