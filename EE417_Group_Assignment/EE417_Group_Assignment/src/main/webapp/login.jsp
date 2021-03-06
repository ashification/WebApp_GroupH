<!DOCTYPE html> <!--Indicates the document is a HTML-->
<html>
<head> <!--The header of the file--->
    <meta name = "viewport" content="width=device-width, initial-scale=1.0">
    <!--Name of the webpage--->
    <title>
        ARSH Sports
    </title>
    <!---This sets the page logo on the top as the websites logo--->
    <link rel="icon" type="image/x-icon" href="images/logo2.JPG">
    <!--Stylesheet for the index page and the login page--->
    <link rel = "stylesheet" href="Stylesheets/style.css">
    <link rel = "stylesheet" href="Stylesheets/login_styles.css">
    <!---Fonts obtained from google fonts--->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Play:wght@400;700&display=swap" rel="stylesheet">
    <!---The stylesheet for the special fonts used in the page--->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.7/css/all.css">
    <!---JavaScript file used--->
    <script src="./JavaScript/app.js" defer></script>
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
<!---This section allows the user to log in to the page--->
<!---There is a register button which takes the user to the register page--->
<!---In the future an exclusive page can be added for those that have registered--->
<section class = 'header_login'>
    <div class = "introduction">
        <h1>LOG IN</h1>
        <div class="form">
            <form action="/login" method="post">
                <input type="text" name="username" id="userid" placeholder="Enter Your Name1" required>
                <input type="text" name="password" id="passid" placeholder="Enter Your Password" required>
                <br/>
                <button type="submit" class="ytlink">Log In</button>
                <div><br/>
                    First time signing in?
                    <a href="register.html" class="reg-button">Register here</a>
                </div>
            </form>
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