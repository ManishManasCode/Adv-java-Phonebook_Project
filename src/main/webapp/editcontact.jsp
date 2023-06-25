<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.dao.ContactDAO" %>
	<%@page import="com.conn.*" %>
	<%@page import="com.entity.*" %>
	<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="component/allCss.jsp" %>


</head>
<body>
<%@include file="component/navbar.jsp" %>

 <%

 if(u == null)
 {
	 session.setAttribute("invalidMsg","Login Please ..");
	 response.sendRedirect("login.jsp");
 }
 %>
<div class="container-fluid">
		<div class="row p-2">
			<div class="col-md-6 offset-md-3">
			<div class="card">
					<div class="card-body">
						<h1 class="text-center text-success">Add Contact Page</h1>


						<%
						
						String errorMsg = (String) session.getAttribute("failedMsg");
							if (errorMsg != null) {
						%>
						<p class="text-danger text-center"><%=errorMsg%></p>
						<%
						session.removeAttribute("failedMsg");
						}
						%>

						<form action="update" method="post">
							<%
							int cid = Integer.parseInt(request.getParameter("cid"));
							ContactDAO dao = new ContactDAO(ConnectDB.getConn());
							Contact c = dao.getContactByID(cid);
							%>
							<input type="hidden" name="cid" value="<%=cid %>">
							<div class="form-group">
								<label for="exampleInputEmail1">Enter Name</label> <input
									value="<%=c.getName()%>" name="name" type="text"
									class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									value="<%=c.getEmail()%>" name="email" type="email"
									class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp">
							</div>

							<div class="form-group">
								<label for="exampleInputPassword1">Enter Phone No.</label> <input
									value="<%=c.getPhno()%>" name="phno" type="text"
									class="form-control" id="exampleInputPassword1">
							</div>

							<div class="form-group">
								<label for="exampleInputPassword1">About</label> <input
									value="<%=c.getAbout()%>" name="about" type="text"
									class="form-control" id="exampleInputPassword1">
							</div>

							<div class="text-center">
								<button type="submit" class="btn btn-primary">Update
									Contact</button>
							</div>

						</form>
					</div>
				</div>
		</div>
	</div>
</div>
<div style="margin-top: 130px">
<%@include file="component/footer.jsp" %>
</div>

</body>
</html>