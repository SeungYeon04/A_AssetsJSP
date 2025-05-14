package back_login;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;

public class ProfileServlet extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        HttpSession session = req.getSession(false);
        if (session == null || session.getAttribute("user") == null) {
            res.sendRedirect(req.getContextPath() + "/page_login/login.jsp");
        } else {
            RequestDispatcher rd = req.getRequestDispatcher("/page_login/profile.jsp");
            rd.forward(req, res);
        }
    }
}
