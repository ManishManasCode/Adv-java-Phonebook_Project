package com.servlet;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.conn.ConnectDB;
import com.dao.UserDAO;
import com.entity.User;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException
	{
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		
		User u =new User(name,email,password);
		
		UserDAO dao=new UserDAO(ConnectDB.getConn());
		boolean f=dao.userRegister(u);
		
		HttpSession session=request.getSession();
		if(f)
		{
			session.setAttribute("sucssMsg","User Register Successfully");
			response.sendRedirect("register.jsp");
		}
		else
		{
			session.setAttribute("errorMsg","Something wrong on server ..");
			response.sendRedirect("register.jsp");
			//System.out.println("Something wrong on server ..");
		}
	}

}
