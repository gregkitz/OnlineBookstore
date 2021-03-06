<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="pics/bookIcon.ico">

    <title>booq!</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="jumbotron.css" rel="stylesheet">
    <link href="css/custom.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>


<jsp:include page="navBar.jsp" flush="true"/>

    <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="jumbotron">
      <div class="container">
        <img src="pics/bookLogo2.png" id="logo" class="col-sm-6 col-md-4">
        <div>
          <p>booq is an online marketplace for books, manuscripts, and scholarly articles. Please sign up for an account and get booqing!</p> 
          <form class="input-group" id="headerSearch" method="post" action="/booq/jsp/searchResults.jsp">
            <input type="text" class="form-control" id="smallSearch" placeholder="Find your booq here" name="search">
            <span class="input-group-btn">
              <button class="btn btn-default" type="submit" name="action" value="search">Go!</button>
            </span>
          </form>
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row --> 
    </div>

    <div id="myCarousel" class="carousel slide">
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>
      <!-- Carousel items -->
      <div class="carousel-inner">
        <div class="active item">
          <img src="pics/filthyShades.jpg" alt="Featured Books">
          <div class="carousel-caption">
            <h4>Check out this awesome book niqqas.  It's called 50 Tones of Black</h4>
            <p>And here's a review for you.  It's Jesus.</p>
          </div>
        </div>
        <div class="item">
          <img src="pics/got.png" alt="Featured Books">
          <div class="carousel-caption">
            <h4>Here's another wikkkkid qoob for yall: Game of Thrones</h4>
            <p>AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA MMMMMMMMMMMMMMMMMM EEEEEEEEEEEEEEEEEEEEEEEEEEEE NNNNNNNNNNNNNNNNNNNNNNNNNNNNN</p>
          </div>
        </div>
        <div class="item">
          <img src="pics/twilight.jpg" alt="Featured Books">
          <div class="carousel-caption">
            <h4>Holla at a brother it's muthafuqin Twilight</h4>
            <p>WHO'S HOTTER!?!?!? Jacob or that sparkle guy?</p>
          </div>
        </div>
      </div>
      <!-- Carousel nav -->
      <a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
      <a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>
    </div>

    <div class="container">
      <!-- Example row of columns -->
      <div class="row">
        <div class="col-md-4">
          <h2>New Book</h2>
          <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
          <p><a class="btn btn-default" href="itemPage.jsp" role="button">View details &raquo;</a></p>
        </div>
        <div class="col-md-4">
          <h2>New Book</h2>
          <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
          <p><a class="btn btn-default" href="itemPage.jsp" role="button">View details &raquo;</a></p>
       </div>
        <div class="col-md-4">
          <h2>New Book</h2>
          <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
          <p><a class="btn btn-default" href="itemPage.jsp" role="button">View details &raquo;</a></p>
        </div>
      </div>

      <hr>

      <footer>
        <p>&copy; Booq Inc. 2015</p>
      </footer>
    </div> <!-- /container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="s/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>