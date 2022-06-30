package asm1;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Login
 */
//@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void procesRequest(HttpServletRequest req, HttpServletResponse resp) throws UnsupportedEncodingException {
    	resp.setContentType("text/html;charset=UTE-8");
    	req.setCharacterEncoding("utf-8");
    	
    	try {
    		//lay du lieu tu form
			String user = req.getParameter("user");
			String pass = req.getParameter("pass");
			
			//doc thong tin tai khoan trong web.xml
			String account_user = getServletConfig().getInitParameter("user");
			String account_pass = getServletConfig().getInitParameter("pass");
			
			//check account
			if(user != null && pass!= null && user.equals(account_user) && pass.equals(account_pass)) {
				resp.sendRedirect("views/home.jsp");
			}else {
				req.getRequestDispatcher("views/login.jsp").forward(req, resp);
				resp.getWriter().println("<h1>Username or password is invalid</h1>");
				
			}
			
		} catch (Exception e) {
			try {
				resp.getWriter().println(e);
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
    }
    
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		procesRequest(req, resp);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
