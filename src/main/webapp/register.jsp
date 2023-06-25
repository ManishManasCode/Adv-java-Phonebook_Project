<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="component/allCss.jsp"%>
</head>
<script type="text/javascript">
	function validateSignUp(){
		var Name = document.getElementById("name").value;
		var Email=document.getElementById("email").value;
		var Password = document.getElementById("password").value
		if(Name == '')
		{
		   alert('Please Enter your Name');
		   return false 
		}
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

<body style="background-color:#f7f8fa">
	<%@include file="component/navbar.jsp"%>
	<div class="container-fluid">
		<div class="row p-2">
			<div class="col-md-6 offset-md-3">
			<div class="card">
				<div class="card-body">
					<h4 class="text-center text-success">Registration Page</h1>
					
					
					<% String sucssMsg=(String)session.getAttribute("sucssMsg");
					 String errorMsg=(String)session.getAttribute("errorMsg");
					if(sucssMsg != null){
						%>
						<p class="text-success text-center"><%=sucssMsg%></p>
						<% 
						session.removeAttribute("sucssMsg");
					}
					if(errorMsg != null)
					{
						%>
						<p class="text-danger text-center"><%=errorMsg%></p>
						<% 
						session.removeAttribute("errorMsg");
					}
					
					%>
					<form action="register" method="post" onsubmit="return validateSignUp()">
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
							<label for="exampleInputPassword1">Password</label> <input name="password"
								type="password" class="form-control" id="password"
								placeholder="Password">
						</div>
                        
                        <div class="text-center">
                        <button type="submit" class="btn btn-primary">Register</button>
                        </div>
						
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
<div style="margin-top: 215px">
<%@include file="component/footer.jsp" %>
</div>
</body>
</html>