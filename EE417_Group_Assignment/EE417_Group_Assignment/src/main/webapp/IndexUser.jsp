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
        <!--Stylesheet for the index page--->
        <link rel = "stylesheet" href="Stylesheets/style.css"> 
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
        <section class = 'header'>
            <div class = "introduction">
                <h1>COMPUTER WORLD</h1>
                <p>Welcome to Computer World, the best place on the internet to buy the latest tech and accessories.
                    <br>We offer a wide range of hardware and software products related to Computers, while also selling
                    games for fellow gamers.  
                </p>
                <a href="ShopUser.jsp" class = "ytlink">Visit our Shop page</a>
            </div>
        </section>

        <!-----Options------>
        <!---This section shows the user all the different panels or sections availble for the user to browse--->
        <!---The options are set up so that they have hovering effects and when clicked the user is taken to the respective webpage--->

        <!------Reviews----->
        <!---This section contains 2 review boxes which aso use the fontawsome symbols of stars along with resizing of image using styles--->
        <section class="reviews">
            <h1><br>Reviews From Users</h1>
            <div class="row">
                <div class="reviews-col">
                    <img src="images/shams.jpg">
                    <div>
                        <p>The website offers an easy gateway to multiple computer products along with their peripherals.
                        </p>
                        <h3>Shams Charania</h3>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                    </div>
                </div>
                <div class="reviews-col">
                    <img src="images/fabri.jpg">
                    <div>
                        <p>This website offers the latest games as well as old games which proved to be very convenient for me.
                        </p>
                        <h3>Fabrizio Romano</h3>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                    </div>
                </div>
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