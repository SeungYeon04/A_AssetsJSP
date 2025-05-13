<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="jakarta.servlet.http.*,jakarta.servlet.*" %>
<%
//이 줄은 삭제!
//HttpSession session = request.getSession(false);

	String username = (String) session.getAttribute("username");
	
	if (username == null) {
	 response.sendRedirect("login.jsp");
	 return;
	}
%>

<!DOCTYPE html>
<html>
<head><title>프로필</title></head>
<body>
  <h2>프로필 페이지</h2>
  <p><strong><%= username %></strong>님, 환영합니다!</p>
  <a href="LogoutServlet">로그아웃</a>
</body>
</html>
