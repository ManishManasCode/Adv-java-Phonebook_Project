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
import com.entity.Contact;


@WebServlet("/update")
public class EditContact extends HttpServlet{

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			
		int cid = Integer.parseInt(req.getParameter("cid"));
		String name=req.getParameter("name");
		String email=req.getParameter("email");
		String phno=req.getParameter("phno");
		String about=req.getParameter("about");
		
		Contact c=new Contact();
		c.setId(cid);
		c.setName(name);
		c.setEmail(email);
		c.setPhno(phno);
		c.setAbout(about);
		
		ContactDAO dao=new ContactDAO(ConnectDB.getConn());
        HttpSession session=req.getSession();
        boolean f=dao.updateContact(c);	
		if(f)
		{
			session.setAttribute("succMsg", "Your Contact Update..");
			resp.sendRedirect("viewContact.jsp");
		}
		else {
			session.setAttribute("failedMsg", "Something Wrong on server..");
			resp.sendRedirect("editcontact.jsp?cid="+cid);
		}
		
		}catch(NumberFormatException e)
		{
			e.printStackTrace();
		}
	
	}
}
