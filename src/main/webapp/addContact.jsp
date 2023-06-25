<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page import="com.entity.*" %>
     <%@page import="com.entity.Contact" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="component/allCss.jsp" %>
<script type="text/javascript">
function validateAddContact(){
		var name = document.getElementById("name").value;
		var Email= document.getElementById("email").value;
		var Mobile= document.getElementById("phno").value;
		var About = document.getElementById("about").value
		if(name == '')
		{
		   alert('Please Enter your Name');
		   return false 
		}
		if(Email == '')
		{
		   alert('Please Enter your Email account');
		   return false
		}
		if(Mobile == ''|| Mobile.length < 10 || Mobile.length > 12)
		{
		   alert('Please Enter your Mobile number at between 10 to 12 digits');
		   return false
		}
		if (About == '') {
            alert('Please enter Your About ');
            return false
        }
	
	}
</script>
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
					
					
					<% String sucssMsg=(String)session.getAttribute("succMsg");
					 String errorMsg=(String)session.getAttribute("failedMsg");
					if(sucssMsg != null){
						%>
						<p class="text-success text-center"><%=sucssMsg%></p>
						<% 
						session.removeAttribute("succMsg");
					}
					if(errorMsg != null)
					{
						%>
						<p class="text-danger text-center"><%=errorMsg%></p>
						<% 
						session.removeAttribute("failedMsg");
					}
					
					%>
					
					<form action="addContact" method="post" onsumbit="return validateAddContact()">
					<%
					if(u!=null)
					{%>
						<input type="hidden" value=<%=u.getId() %> name="userid">
					<% }
					%>
						<div class="form-group">
							<label for="exampleInputEmail1">Enter Name</label> <input name="name" 
								type="text" class="form-control" id="name"
								aria-describedby="emailHelp">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">Email address</label> <input name="email" 
								type="email" class="form-control" id="email"
								aria-describedby="emailHelp">
						</div>

						<div class="form-group">
							<label for="exampleInputPassword1">Enter Phone No.</label> <input name="phno" 
								type="text" class="form-control" id="phno">
						</div>
						
						<div class="form-group">
							<label for="exampleInputPassword1">About</label> <input name="about" 
								type="text" class="form-control" id="about">
						</div>
                        
                        <div class="text-center">
                        <button type="submit" class="btn btn-primary">Save Contact</button>
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