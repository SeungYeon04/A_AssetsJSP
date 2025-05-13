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
        <a href="home.jsp">홈</a>
        <a href="index.jsp">상품</a>
        <a href="cart.jsp">장바구니</a>
        <a href="QnA.jsp">문의하기</a>
    </nav>

<%
	// 장바구니 세션 저장 처리
	String cartName = request.getParameter("name");
	String cartLink = request.getParameter("link");

	if (cartName != null && cartLink != null) {
	    List<String[]> cart = (List<String[]>) session.getAttribute("cart");
	    if (cart == null) {
	        cart = new ArrayList<>();
	    }
	    cart.add(new String[]{cartName, cartLink});
	    session.setAttribute("cart", cart);
	}

	// 상품 데이터
	class Product {
		String name, price, image, link;

		Product(String name, String price, String image, String link) {
			this.name = name;
			this.price = price;
			this.image = image;
			this.link = link;
		}
	}

	List<Product> products = new ArrayList<>();
	products.add(new Product("음식 도트이미지", "₩1,000", "image/nullImage.jpg", "https://seungyeon.itch.io/fooddot"));
	products.add(new Product("별모양 이미지", "Free", "image/nullImage.jpg", "https://seungyeon.itch.io/starasset"));
	products.add(new Product("기본 도트 애니메이션", "₩2,000", "image/nullImage.jpg", "https://seungyeon.itch.io/dotmotion"));
	products.add(new Product("모바일 게임 기본배경", "₩1,000", "image/nullImage.jpg", "https://seungyeon.itch.io/mobilebg"));
	products.add(new Product("고양이 애니메이션 .gif", "₩5,000", "image/nullImage.jpg", "https://seungyeon.itch.io/catasset"));
%>

    <div class="container">
    <% for (Product p : products) { %>
        <div class="product">
            <img src="<%= p.image %>" alt="상품 이미지" style=" width: 80px; height: auto;">
            <h3><%= p.name %></h3>
            <p><%= p.price %></p>
            <form action="index.jsp" method="get">
            	<input type="hidden" name="name" value="<%= p.name %>">
            	<input type="hidden" name="link" value="<%= p.link %>">
	            <button type="submit">담아두기</button>
        		<a href="<%= p.link %>" target="_blank"><button type="button">구매하기</button></a>
            </form>
        </div>
    <% } %>
    </div>

    <footer>© 2025 / @SeungYeon04 개발자의 에셋스토어</footer>
</body>
</html>
