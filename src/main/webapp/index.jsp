 <%@page import="java.sql.*" %>
 <%@page import="com.conn.*" %>
 <%@page import="com.entity.User" %>
	<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Phonebook App</title>
<%@include file="component/allCss.jsp"%>
<style type="text/css">
.back-img {
	background: url("img/contacts-phone-book-pixel-blue.jpg");
	width: 100%;
	height: 80vh;
	background-repeat: no-repeat;
	backgroud-size: cover;
}
</style>
</head>
<body>
	<%@include file="component/navbar.jsp" %>
	
	<div
		class="container-fluid back-img text-center text-dark text-success">
		<h1>Welcome to PhoneBook</h1>
	</div>
	<%@include file="component/footer.jsp"%>
</body>
</html>