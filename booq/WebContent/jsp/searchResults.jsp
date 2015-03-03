<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%@page import="beans.Book"%>  
<jsp:useBean id="DBConnectionPool" scope="application"
  class="booq.model.DBConnectionPool"/>  
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="/booq/css/bootstrap.css" type="text/css"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Search Results</title>
</head>
<body>

<% 
  //String search = request.getParameter("search"); 
   String search = "Greg"; 
  if (search != null) {

%>
<% 
ArrayList<Book> books = DBConnectionPool.getSearch(search); 
Iterator<Book> iterator = books.iterator(); 

Book book = (Book) iterator.next(); 

%>

<h2> 
<%=book.getTitle() %>
<%=book.getAuthor() %>
<%=book.getPrice() %>
<%=book.getDescription() %>

<% 

}

%>
</h2>
</body>
</html>