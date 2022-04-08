<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html> <!--Indicates the document is a HTML-->
<html id="parents">
    <head id="parent"> <!--The header of the file--->
        <meta name = "viewport" content="width=device-width, initial-scale=1.0">
        <!--Name of the webpage--->
        <title>
            Computer World
        </title>
        <!---This sets the page logo on the top as the websites logo--->
        <link rel="icon" type="image/x-icon" href="images/cw.JPG">
        <!--Stylesheet for the index page and the articles page--->
        <link rel = "stylesheet" href="Stylesheets/style.css"> 
        <link rel = "stylesheet" href="Stylesheets/articles_styles.css">
        <link rel = "stylesheet" href="Stylesheets/dom_styles.css">
        <link rel = "stylesheet" href="Stylesheets/register_styles.css">
        <!---Fonts obtained from google fonts---> 
        <link rel="preconnect" href="https://fonts.googleapis.com"> 
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Play:wght@400;700&display=swap" rel="stylesheet">
        <!---The stylesheet for the special fonts used in the page---> 
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.7/css/all.css">
        <!---JavaScript file used--->
        <script src="JavaScript/app.js" defer></script>
        <script src="JavaScript/articles.js" defer></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
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
        <!---This section has a button which takes the user to the home page of the Athletic which is a source used in the options. 
            It also has a hovering transition effect--->
        <section class = 'header_articles'>
            <div class = "introduction">
                <h1>SHOP</h1>
                <p>We offer a variety of products dealing with PC, Laptops, Peripherals and the games catalogue.
                    <br> The specials section is for our producst which have been put up on sale for a reduced price.
                </p>
            </div>
        </section>

        <section class="Options-Panel">
            <h2>Products related to Computers</h2>
            <div class = "row">
                <div class = "column" onclick="location.href = 'PcAdmin.jsp'">
                    <h3>PC</h3>
                    <p>We offer a wide range of options related to the PC industry. These can be very useful for people who prefer desktop computers. 
                        <br>This link directs you to our computer store.
                    </p>
                </div>
                <div class = "column" onclick="location.href = 'LaptopAdmin.jsp'">
                    <h3>Laptops</h3>
                    <p>We offer a wide range of options related to the laptop industry. These can be very useful for people who prefer portable computers.
                        <br> This link directs you to our laptop store.
                    </p>
                </div>
                <div class = "column" onclick="location.href = 'PeripheralsAdmin.jsp'">
                    <h3>Peripherals</h3>
                    <p>We offer a wide variety of peripherals which can be used to enhance a users experience while using their computer.
                        <br> This link directs you to our peripherals store.
                    </p>
                </div>
            </div>
            <h2>Products related to Games and Specials</h2>
            <div class = "row">
                <div class = "column2" onclick="location.href = 'GamesAdmin.jsp'">
                    <h3>Games Catalogue</h3>
                    <p>We cater to the needs of every gamer by selling the latest games available on the market
                        <br> This link directs you to our gaming store.
                    </p>
                </div>
                <div class = "column2" onclick="location.href = 'SpecialAdmin.jsp'">
                    <h3>Special Offers</h3>
                    <p>We offer periodic Sales on items that are low in stock.
                        <br> This link directs you to our sales store.
                    </p>
                </div>
            </div>
            
            <h2>Supplies</h2>
            <div class = "row">
                <div class = "column2" onclick="location.href = 'RestockAdmin.jsp'">
                    <h3>Re-stock Supplies</h3>
                    <p>Need to add Item to stock ?
                        <br> This link directs you to the restock page.
                    </p>
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