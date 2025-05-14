<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head><title>로그인</title></head>
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>../css/main.css">
<body>
  <h2>로그인</h2>
<form action="<%=request.getContextPath()%>/LoginServlet" method="post">
    <input type="text" name="id" placeholder="아이디" required><br>
    <input type="password" name="pw" placeholder="비밀번호" required><br>
    <button type="submit">로그인</button>
</form>

  <p>계정이 없으신가요? <a href="register.jsp">회원가입</a></p>
</body>
</html>
