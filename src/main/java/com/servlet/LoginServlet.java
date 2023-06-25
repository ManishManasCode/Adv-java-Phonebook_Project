package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.User;

import com.conn.ConnectDB;
import com.dao.UserDAO;

@WebServlet("/Login")
public class LoginServlet extends HttpServlet{


	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String email=request.getParameter("email");
		String pass=request.getParameter("password");
		
		UserDAO dao=new UserDAO(ConnectDB.getConn());
		User u= dao.loginUser(email,pass);
		
		HttpSession session=request.getSession();
		
		if(u != null)
		{
			session.setAttribute("user", u);
			response.sendRedirect("index.jsp");
			//System.out.println("User is available=" +u);
		}
		else
		{
			session.setAttribute("invalidMsg", "Invalid Email and password");
			response.sendRedirect("login.jsp");
			//System.out.println("User is not available=" +u);
		}
		
	}
	
	
}
