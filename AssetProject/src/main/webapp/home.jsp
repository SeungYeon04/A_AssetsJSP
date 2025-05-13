<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/main.css">
<title>드루이드 마을의 에셋스토어</title>
</head>
<body>
	<header>† ♤ ♧  드루이드 마을의 에셋스토어 £ ¢</header>

	<form action="MyServlet" method="post">
		<input type="text" name="fname" placeholder="검색어를 입력해주세요." />
	</form>

    <nav>
    	<a href="page_login/profile.jsp">계정</a>
        <a href="home.jspindex.jsp">홈</a>
        <a href="index.jsp">상품</a>
        <a href="cart.jsp">장바구니</a>
        <a href="QnA.jsp">문의하기</a>
    </nav>


    <footer>© 2025 / @SeungYeon04 개발자의 에셋스토어</footer>
</body>
</html>
