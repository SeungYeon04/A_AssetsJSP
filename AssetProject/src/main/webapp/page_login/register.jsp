<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head><title>회원가입</title></head>
<body>
  <h2>회원가입</h2>
<form action="<%=request.getContextPath()%>/RegisterServlet" method="post">

    <input type="text" name="id" placeholder="아이디" required><br>
    <input type="password" name="pw" placeholder="비밀번호" required><br>
    <button type="submit">가입하기</button>
</form>

  <p>이미 계정이 있으신가요? <a href="login.jsp">로그인</a></p>
</body>
</html>
