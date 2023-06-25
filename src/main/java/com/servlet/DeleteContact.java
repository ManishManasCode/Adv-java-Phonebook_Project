package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.conn.ConnectDB;
import com.dao.ContactDAO;


@WebServlet("/delete")
public class DeleteContact extends HttpServlet{
	

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;


	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
		int cid=Integer.parseInt(req.getParameter("cid"));
		
		ContactDAO dao =new ContactDAO(ConnectDB.getConn());
		
		boolean f=dao.deleteContactById(cid);
		HttpSession session=req.getSession();
		
		if(f)
		{
			session.setAttribute("succMsg", "Contact Delete Successfully");
			resp.sendRedirect("viewContact.jsp");
		}else {
			session.setAttribute("failedMsg", "Something wrong on server");
			resp.sendRedirect("viewContact.jsp");
		}
		
	}catch(NumberFormatException e) {
		e.printStackTrace();
	}
		
	}

}
