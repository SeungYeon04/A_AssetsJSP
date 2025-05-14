package back_login;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;

public class LogoutServlet extends HttpServlet {
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
	    HttpSession session = req.getSession(false);
	    if (session != null) {
	        session.invalidate();
	    }
	    res.sendRedirect(req.getContextPath() + "/page_login/login.jsp");
	}

}
