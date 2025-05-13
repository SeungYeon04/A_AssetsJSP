<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head><meta charset="UTF-8">
<title>드루이드 마을의 에셋스토어</title>
</head>
<body>
 <nav>
    	<a href="#">계정</a>
        <a href="index.jsp">홈</a>
        <a href="#">상품</a>
        <a href="#">장바구니</a>
        <a href="#">문의하기</a>
</nav>

<h2>🛒 장바구니 목록</h2>

<%
	// 삭제 요청 처리
	String delIndexStr = request.getParameter("delete");
	if (delIndexStr != null) {
		try {
			int delIndex = Integer.parseInt(delIndexStr);
			List<String[]> cart = (List<String[]>) session.getAttribute("cart");
			if (cart != null && delIndex >= 0 && delIndex < cart.size()) {
				cart.remove(delIndex);
				session.setAttribute("cart", cart);
			}
			// 삭제 후 새로고침
			response.sendRedirect("cart.jsp");
			return;
		} catch (Exception e) {
			out.println("삭제 중 오류 발생: " + e.getMessage());
		}
	}

	List<String[]> cart = (List<String[]>) session.getAttribute("cart");
	if (cart == null || cart.isEmpty()) {
%>
	<p>장바구니가 비어 있어요.</p>
<%
	} else {
%>
	<ul>
	<% for (int i = 0; i < cart.size(); i++) {
		String[] item = cart.get(i);
	%>
		<li>
			<%= item[0] %>  
			<a href="<%= item[1] %>" target="_blank">→ 구매</a>
			<a href="cart.jsp?delete=<%= i %>" style="color:red; text-decoration:none; margin-left:10px;">❌</a>
		</li>
	<% } %>
	</ul>
<% } %>

<br>
<a href="index.jsp">← 돌아가기</a>

<style>
		* {
		 font-family: 'Ownglyph_ParkDaHyun';
		}

	    @font-face {
		    font-family: 'Ownglyph_ParkDaHyun';
		    src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/2411-3@1.0/Ownglyph_ParkDaHyun.woff2') format('woff2');
		    font-weight: normal;
		    font-style: normal;
		}

		nav {
			background-color: #444;
			padding: 10px;
			text-align: ceter;
		}

		nav a {
			color: white;
            text-decoration: none;
            margin: 0 8px;
		}

		nav a:hover {
            text-decoration: underline;
        }
</style>
</body>
</html>
