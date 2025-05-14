<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head><title>프로필</title></head>
<body>
    <h2>프로필 페이지</h2>
    <p>로그인한 사용자: <%= session.getAttribute("user") %></p>
    <a href="<%=request.getContextPath()%>/LogoutServlet">로그아웃</a>
</body>
</html>
