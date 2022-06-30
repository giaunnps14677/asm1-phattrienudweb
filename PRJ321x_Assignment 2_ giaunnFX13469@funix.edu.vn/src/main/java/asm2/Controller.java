package asm2;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//@WebServlet("/Controller")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Controller() {
    	super();
        // TODO Auto-generated constructor stub
    }
    @Override
    public void init(ServletConfig config) throws ServletException {
    super.init(config);
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//response.setContentType("text/html;charset=UTE-8");
    	//request.setCharacterEncoding("utf-8");
		
    	try {
			request.getSession(true).invalidate();
			
//			kiem tra email
			String regexMail = "^[0-9a-zA-Z]+@[0-9a-zA-Z]+.[a-zA-Z]{2,6}$";
			String regex = "^[0-9a-zA-Z]{1,8}$";
			
			//lay thong tin tu form
			String uname = request.getParameter("user");
	    	String password = request.getParameter("pass");
	    	String remember = request.getParameter("remember");
	    	
	    	PrintWriter out = response.getWriter();
	    	
	    	Account acc = new Account();
	    	acc.setName(uname); 
	    	acc.setPwd(password);
	    	
	    	HttpSession session = request.getSession(true);
	    	
	    	if(!password.matches(regex) || !uname.matches(regexMail)) {
	    		session.setAttribute("error", "invalid syntax");
	    		response.sendRedirect("views/login.jsp");
	    	}
	    	
//	    	doc thong tin tai khoan trong web.xml
	    	String accountUser = getServletConfig().getInitParameter("user");
	    	String accountPass = getServletConfig().getInitParameter("pass");
	    	
//	    	kiem tra tai khoan
	    	if(uname != null && acc.getPwd().equals(accountPass) && acc.getName().equalsIgnoreCase(accountUser)) {
	    		
//	    		set Cookie
	    		Cookie cookieUname = new Cookie("cookUname", uname);
//	    		cookieUname.setMaxAge(300);
	    		
	    		Cookie cookiePass = new Cookie("cookPass", password);
//	    		cookiePass.setMaxAge(300);
	    		
	    		Cookie cookieRemember = new Cookie("cookRem", remember);
//	    		cookieRemember.setMaxAge(300);
	    		
	    		response.addCookie(cookieUname);
	    		response.addCookie(cookiePass);
	    		response.addCookie(cookieRemember);
	    		
//	    		set session
	    		session.setAttribute("user", "duongdt");
	    		response.sendRedirect("views/admin.jsp");
	    		
	    	}else if(uname.equals("user@fpt.com") && password.equals("1")) {
	    		session.setAttribute("user", uname);
	    		response.sendRedirect("views/trangchu.jsp");
	    	}
	    	
	    	session.setAttribute("error", "wrong username or password");
    		response.sendRedirect("views/login.jsp");
	    	
		} catch (NullPointerException e) {
			request.getRequestDispatcher("views/login.jsp").forward(request, response);
		} catch(Exception ex) {
			response.getWriter().println(ex);
		}
		
    	
//		PrintWriter out = response.getWriter();
//		response.getWriter().println("hello -");
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		
		
//		HttpSession sessionGetName = request.getSession();
//		sessionGetName.setAttribute("uname1", uname);
	}

}
