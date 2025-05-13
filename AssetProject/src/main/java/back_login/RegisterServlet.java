package back_login;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;

public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String id = req.getParameter("id");
        String pw = req.getParameter("pw");

        if (UserDatabase.register(id, pw)) {
            res.sendRedirect("login.jsp");
        } else {
            res.sendRedirect("register.jsp?error=1");
        }
    }
}
