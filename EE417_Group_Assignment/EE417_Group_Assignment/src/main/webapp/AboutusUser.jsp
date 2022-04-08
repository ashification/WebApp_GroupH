<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
        <!--Stylesheet for the index page and the about us page--->
        <link rel = "stylesheet" href="Stylesheets/style.css"> 
        <link rel = "stylesheet" href="Stylesheets/aboutus_styles.css">
        <!---Fonts obtained from google fonts---> 
        <link rel="preconnect" href="https://fonts.googleapis.com"> 
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Play:wght@400;700&display=swap" rel="stylesheet">
        <!---The stylesheet for the special fonts used in the page---> 
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.7/css/all.css">
        <!---JavaScript file used--->
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
                    <li><a href = "IndexUser.jsp">HOME</a></li>
                    <li><a href = "AboutusUser.jsp">ABOUT US</a></li>
                    <li><a href = "ShopUser.jsp">SHOP</a></li>
                    <li><a href = "ReturnsUser.jsp">RETURNS</a></li>
                    <li><a href = "LogoutServlet">LOG OUT</a></li> <!---List of html webpages used with their links--->
                </ul>
            </div>
        </section>

        <!-----Background image with introduction page------>
        <!---This section was used to show the user what page they are on with an image and some comments on the page--->
        <!---This section has a button which takes the user to the youtube page. It also has a hovering transition effect--->
        <section class = 'header_aboutus'>
            <div class = "introduction">
                <h1>ABOUT US</h1>
                <p> Computer World is a website that was created by a team of 8 people studying in DCU. The task of designing this 
                    website was split into muini tasks and assigned to each member.<br>
                    <br> Front end aspects of the project were handled by Arshad Hussain Asmath and Jieying Zhang. <br>
                    <br> Back end development of the project was completed by Matthieu Crampon, Daniel Fagan and Haoran Zhou. <br>
                    <br> The release of this project was handled by Theo Mazars and Asif Gafoor Syed. <br>
                    <br> The entire project was supervised by the team leader, Aisling Lee.
                </p>
            </div>
        </section>

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