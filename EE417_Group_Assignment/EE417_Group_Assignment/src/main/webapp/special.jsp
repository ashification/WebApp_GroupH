<!DOCTYPE html> <!--Indicates the document is a HTML-->
<html id="parents">
<head id="parent"> <!--The header of the file--->
    <meta name = "viewport" content="width=device-width, initial-scale=1.0">
    <!--Name of the webpage--->
    <title id="title">
        ARSH Sports
    </title>
    <!---This sets the page logo on the top as the websites logo--->
    <link rel="icon" type="image/x-icon" href="images/logo2.JPG">
    <!--Stylesheet for the index page and the articles page--->
    <link rel = "stylesheet" href="Stylesheets/style.css">
    <link rel = "stylesheet" href="Stylesheets/articles_styles.css">
    <link rel = "stylesheet" href="Stylesheets/dom_styles.css">
    <link rel = "stylesheet" href="Stylesheets/register_styles.css">
    <link rel = "stylesheet" href="Stylesheets/specials_styles.css">
    <!---Fonts obtained from google fonts--->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Play:wght@400;700&display=swap" rel="stylesheet">
    <!---The stylesheet for the special fonts used in the page--->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.7/css/all.css">
    <!---JavaScript file used--->
    <script src="./JavaScript/app.js" defer></script>
    <script src="./JavaScript/articles.js" defer></script>
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
            <li><a href = "index.html">HOME</a></li>
            <li><a href = "aboutus.html">ABOUT US</a></li>
            <li><a href = "shop.html">SHOP</a></li>
            <li><a href = "returns.html">RETURNS</a></li>
            <li><a href = "login.html">LOG IN/REGISTER</a></li> <!---List of html webpages used with their links--->
        </ul>
    </div>
</section>

<!-----Background image with introduction page------>
<!---This section was used to show the user what page they are on with an image and some comments on the page--->
<!---This section has a button which takes the user to the home page of the Athletic which is a source used in the options.
    It also has a hovering transition effect--->
<section class = 'header_specials'>
    <div class = "introduction">
        <h1>Items on Sale</h1>
        <p>Welcome to the Specials section. Here you will find all the items that have been listed for sale.
            <br> You need to be logged in to make a purchase
        </p>
        <a href="shop.html" class = "ytlink">Go back to the Shop</a>
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
