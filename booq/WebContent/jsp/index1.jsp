<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="booq.beans.CartItem"%> 
    <%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>booq</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/landing-page.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

<% //putting the cart in session if it's not there already 
ArrayList<CartItem> shoppingCart  = new ArrayList<CartItem>(); 
if (session.getAttribute("cart") == null){
	session.setAttribute("cart", shoppingCart); 
}

String email = (String) session.getAttribute("userEmail");
String custIDstring = (String) session.getAttribute("customerIDstring"); 
int custID = -2; 
if(custIDstring != null) { 
	custID = Integer.parseInt(custIDstring);
	System.out.println("cust id in jsp " + custID); 
}
%>

    <!-- Navigation -->
<jsp:include page="navBar.jsp" flush="true"/>


    <!-- Header -->
    <a name="about"></a>
    <div class="intro-header">
        <div class="container">

            <div class="row">
                <div class="col-lg-12">
                    <div class="intro-message">
                        <h1>booq</h1>
                        <h3>An online bookstore</h3>
                        <hr class="intro-divider">
                        <% if (!(custID > 0)) { %>
	                        <ul class="list-inline intro-social-buttons">
	                            <li>
	                                <a href="/booq/MainServlet?action=signup" class="btn btn-default btn-lg">
	                                	<i class="fa fa-user fa-fw"></i> 
	                                	<span class="network-name">Sign up now to start searching</span>
	                                </a>
	                            </li>
	                        </ul>
	                	<% } %>
                    </div>
                </div>
            </div>

        </div>
        <!-- /.container -->

    </div>
    <!-- /.intro-header -->

    <!-- jQuery -->
<!--     <script src="js/jquery.js"></script> -->

    <!-- Bootstrap Core JavaScript -->
<!--     <script src="js/bootstrap.min.js"></script> -->

</body>

</html>
