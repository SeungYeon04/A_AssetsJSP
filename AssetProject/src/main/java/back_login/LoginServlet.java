package back_login;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;

public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String id = req.getParameter("id");
        String pw = req.getParameter("pw");

        if (UserDatabase.login(id, pw)) {
            HttpSession session = req.getSession();
            session.setAttribute("user", id);
            res.sendRedirect(req.getContextPath() + "/ProfileServlet");

        } else {
        	res.sendRedirect(req.getContextPath() + "/page_login/login.jsp?error=1");
        }
    }
}
