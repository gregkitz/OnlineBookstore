<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%@page import="booq.beans.Book"%> 
<%@page import="booq.beans.Genre"%>  
<%@page import="booq.model.DBConnectionPool"%>     
 <!--<jsp:useBean id="connPool" scope="application"
  class="booq.model.DBConnectionPool"/>-->   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Browse books</title>
</head>
<body>

<jsp:include page="navBar.jsp" flush="true"/>

<% 
connPool = new DBConnectionPool();

ArrayList<Genre> genres = connPool.getGenres();
Iterator<Genre> iterator = genres.iterator(); 


connPool.test(); 
//String theGenre = (String) iterator.next(); 
//Book book;
%>
 
<h2> 
<br><br><br>
<%
Genre theGenre; 

while (iterator.hasNext()) {
 theGenre  = iterator.next(); %>
<br><a href="/booq/MainServlet?action=search&search=notNull&searchType=genre&genreID=<%=theGenre.getId() %>" >
<%=theGenre.getId() %> <%=theGenre.getName() %> </a><br>

<% }

%>
</body>
</html>