<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>드루이드 마을의 에셋스토어</title>
</head>
<body>
	<header>† ♤ ♧  드루이드 마을의 에셋스토어 £ ¢</header>

	<form action="MyServlet" method="post">
		<input type="text" name="fname" placeholder="검색어를 입력해주세요." />
	</form>

    <nav>
    	<a href="#">계정</a>
        <a href="#">홈</a>
        <a href="#">상품</a>
        <a href="cart.jsp">장바구니</a>
        <a href="#">문의하기</a>
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

    <style>
    	* {
    		font-family: 'Ownglyph_ParkDaHyun';
    	}

    	button {
    		background: whilte;
    		font-family: 'Ownglyph_ParkDaHyun';
    	}

    	header {
    		text-align: center;
    		padding: 15px 0;
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

		.container {
			width: 100%;
			margin: 20px auto;
			display: flex;
			flex-wrap: wrap;
			justify-content: center;
		}

		.product {
			width: 15%;
			background: white;
			padding-top: 10px;
			padding-left: 15px; padding-right: 15px;
			padding-bottom: 10px;
			box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
			text-align: center;
			margin: 10px;
			
			min-width: 120px;
  			/*min-height: 10px;*/
		}

		form {
    		text-align: center;
  		}

  		form input[type="text"] {
		    width: 400px;
		    height: 30px;
		    font-size: 18px;
		    padding: 5px 10px;
		    margin-bottom: 10px;
		 	border: 1px solid #333;
		 	border-radius: 10px;
  		}
    </style>
</body>
</html>
