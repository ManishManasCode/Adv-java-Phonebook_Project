<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="component/allCss.jsp"%>
<script type="text/javascript">
	function validateLogin(){
		//var Name = document.getElementById("name").value;
		var Email=document.getElementById("email").value;
		var Password = document.getElementById("password").value
		/*if(name == '')
		{
		   alert('Please Enter your Name');
		   return false 
	
		}*/
		if(Email == '')
		{
		   alert('Please Enter your Email Address');
		   return false
		}
		if (Password == '') {
            alert('Please enter password');
            return false
        }
	
	}
</script>

</head>
<body style="background-color:#f7f8fa">
	<%@include file="component/navbar.jsp"%>
	<div class="container-fluid">
		<div class="row p-2">
			<div class="col-md-6 offset-md-3">
			<div class="card">
				<div class="card-body">
					<h1 class="text-center text-success">Login Page</h1>
					<%
					String invalidMsg=(String)session.getAttribute("invalidMsg");
					if(invalidMsg!=null)
					{
						%>
						<p class="text-danger text-center"><%=invalidMsg %></p>
						<% 
						session.removeAttribute("invalidMsg");
					}
					%>
					
					<%
					String logMsg=(String)session.getAttribute("logMsg");
					if(logMsg!=null)
					{
						%>
						<p class="text-success text-center"><%=logMsg %></p>
						<% 
						session.removeAttribute("logMsg");
					}
					%>
					<form action="Login" method="post" onsubmit="return validateLogin()">
						
						<div class="form-group">
							<label for="exampleInputEmail1">Email address</label> <input name="email"
								type="email" class="form-control" id="email"
								aria-describedby="emailHelp">
						</div>

						<div class="form-group">
							<label for="exampleInputPassword1">Password</label> <input name="password"
								type="password" class="form-control" id="password"
								placeholder="Password">
						</div>
                        
                        <div class="text-center">
                        <button type="submit" class="btn btn-primary">Login</button>
                        </div>
						
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
<div style="margin-top: 301px">
<%@include file="component/footer.jsp" %>
</div>
</body>
</html>