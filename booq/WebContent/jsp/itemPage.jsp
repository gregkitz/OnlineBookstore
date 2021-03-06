<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="booq.beans.Book"%>  
    <%@page import="booq.model.DBConnectionPool"%>  
    <%@page import="java.util.ArrayList"%>
    <%@page import="booq.beans.Rating"%>
    <%@page import="booq.beans.CartItem"%>
    <%@page import="java.util.Iterator"%>
<!--<jsp:useBean id="connPool" scope="application"
  class="booq.model.DBConnectionPool"/>-->
  <jsp:include page="navBar.jsp" flush="true"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/star-rating.min.css" media="all" rel="stylesheet" type="text/css"/>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="js/star-rating.min.js" type="text/javascript"></script>
   <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
   <meta charset="utf-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <meta name="description" content="">
   <meta name="author" content="">
   <link rel="icon" href="pics/bookIcon.ico">

   <title>booq!</title>

   <!-- Bootstrap core CSS -->
   

   <!-- Custom styles for this template -->
   <link href="jumbotron.css" rel="stylesheet">
   <link href="css/small-business.css" rel="stylesheet">
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

<%
ArrayList<CartItem> shoppingCart  = new ArrayList<CartItem>(); 
if (session.getAttribute("cart") == null){
	session.setAttribute("cart", shoppingCart); 
}
connPool = new DBConnectionPool();


String bookID = (String) request.getParameter("bookResult"); 
System.out.println("This is the book ID: " + bookID); 

//get ratings
ArrayList<Rating> ratings =connPool.getRatingByBook(Integer.parseInt(request.getParameter("bookResult"))); 

//

Book book = new Book();
if( connPool.getBookDetails(Integer.parseInt(bookID)) != null){
	book = connPool.getBookDetails(Integer.parseInt(bookID));
}
//book.getPicturePath(); 
System.out.println(book.getPicturePath()); 
%>

<%System.out.println("Action = " + request.getParameter("action")); %>
<% //request.setParameter("action", "search"); %>
 
  
  <!-- Page Content -->
  
  <div class="container">
    <!-- Heading Row -->
    <div class="row">
      <div class="col-md-8">
          <img class="img-responsive img-rounded"  src="<%=book.getPicturePath()%>.jpg"  alt="">
      </div>
      <!-- /.col-md-8 -->
      <div class="col-md-4">
        <h1><%=book.getTitle()%></h1>
        <p><%=book.getDescription() %></p>
  
  
  <!-- QUANTITY SELECTION BOX  -->
        <div class="container">
  
  <form style="width:150px" action="/booq/MainServlet?action=login">
    <div class="form-group">
      
      <select class="form-control" id="sel1" style="width:50px" name="quantity">
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
      </select>
      <p>Price: $<%=book.getPrice()%></p>
      
      <br>
      <input type="hidden" name="action" value="cart"> 
      <input  class="btn btn-primary btn-lg" type = "submit" value="Add item to cart">
      <input type="hidden" name="cartAction" value="addItem"> 
      <input type="hidden" name="bookID" value="<%=book.getId() %>">
    </div>
  </form>
</div>

<!--  END QUANTITY SELECTION BOX  -->
      <br>
        <form method="GET">
  <input id="input-2c" class="rating" min="0" max="5" step="0.5" data-size="sm"
           data-symbol="&#xf005;" data-glyphicon="false" data-rating-class="rating-fa" name="rating">
           <input type="hidden" name="action" value="rate"> 
  <input type="submit" value="Rate!">
  </form>
      </div>
      <!-- /.col-md-4 -->
    </div>
    <!-- /.row -->

    <hr>
 <!-- Call to Action Well -->
    <div class="row">
      <div class="col-lg-12">
        <div class="well text-center">
            This is a well that is a great spot for a business tagline or phone number for easy access!
        </div>
      </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
<!-- RATINGS GO HERE -->

<%if(!ratings.isEmpty()) {
	Iterator<Rating> iterator = ratings.iterator(); 
	if (iterator.hasNext()){
	Rating rating = iterator.next(); %>
		 <!-- Content Row -->
		    <div class="row">
		      <div class="col-md-4">
		        <h2><%=rating.getDate() %></h2>
		        <p><%=rating.getDes() %></p>
		        <a class="btn btn-default" href="#">More Info</a>
		      </div>
		      <!-- /.col-md-4 -->
		      <div class="col-md-4">
		        <h2>Heading 2</h2>
		        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Saepe rem nisi accusamus error velit animi non ipsa placeat. Recusandae, suscipit, soluta quibusdam accusamus a veniam quaerat eveniet eligendi dolor consectetur.</p>
		        <a class="btn btn-default" href="#">More Info</a>
		      </div>
		      <!-- /.col-md-4 -->
		      <div class="col-md-4">
		        <h2>Heading 3</h2>
		        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Saepe rem nisi accusamus error velit animi non ipsa placeat. Recusandae, suscipit, soluta quibusdam accusamus a veniam quaerat eveniet eligendi dolor consectetur.</p>
		        <a class="btn btn-default" href="#">More Info</a>
		      </div>
		        <!-- /.col-md-4 -->
		    </div><%
	}
}
%>

   
    <!-- /.row -->

    <!-- Footer -->
    <footer>
      <div class="row">
        <div class="col-lg-12">
          <p>Copyright &copy; Your Website 2014</p>
        </div>
      </div>
    </footer>

  </div>
  <!-- /.container -->
    

    <!-- Footer -->
    <footer>
      <div class="row">
        <div class="col-lg-12">
          <p>Copyright &copy; Your Website 2014</p>
        </div>
      </div>
    </footer>

  </div>
  <!-- /.container -->

  <!-- jQuery -->
  <script src="js/jquery.js"></script>

  <!-- Bootstrap Core JavaScript -->
  <script>
    jQuery(document).ready(function () {
        $("#input-21f").rating({
            starCaptions: function(val) {
                if (val < 3) {
                    return val;
                } else {
                    return 'high';
                }
            },
            starCaptionClasses: function(val) {
                if (val < 3) {
                    return 'label label-danger';
                } else {
                    return 'label label-success';
                }
            },
            hoverOnClear: false
        });
        
        $('#rating-input').rating({
              min: 0,
              max: 5,
              step: 1,
              size: 'lg'
           });
           
        $('#btn-rating-input').on('click', function() {
            var $a = self.$element.closest('.star-rating');
            var chk = !$a.hasClass('rating-disabled');
            $('#rating-input').rating('refresh', {showClear:!chk, disabled:chk});
        });
        
        
        $('.btn-danger').on('click', function() {
            $("#kartik").rating('destroy');
        });
        
        $('.btn-success').on('click', function() {
            $("#kartik").rating('create');
        });
        
        $('#input-21d').on('rating.change', function(event, value) {
           console.log(value); 
        });
        
        
        $('.rb-rating').rating({'showCaption':true, 'stars':'3', 'min':'0', 'max':'3', 'step':'1', 'size':'xs', 'starCaptions': {0:'status:nix', 1:'status:wackelt', 2:'status:geht', 3:'status:laeuft'}});
    });
</script>


  
</body>
</html>