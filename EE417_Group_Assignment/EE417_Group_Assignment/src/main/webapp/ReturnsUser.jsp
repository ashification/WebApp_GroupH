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
                <h1>RETURN POLICY</h1>
                <p>Under consumer law, if a product or service breaks, is not fit for purpose or does not do what the seller or advertisement said it would do, you can ask for a repair, replacement or refund.<br>
                    <br>Repairs, replacements and refunds are known as remedies. The remedy you are entitled to can depend on the goods in question and other factors. <br>
                    <br>For products bought in a shop, you do not have a legal right to a refund because you change your mind. If you bought the goods online, in most cases, you have 14 days to change your mind and get a full refund. 
                </p>
                <a href="IndexUser.jsp" class = "ytlink">Visit Our Home Page</a>
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