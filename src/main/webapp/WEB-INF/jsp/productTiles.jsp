<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<c:set var="pageTitle" value="Product Tile" />


<%@ include file="common/header.jspf"%>
<div class="row">
	<c:forEach var="product" items="${productList}">
		<div>
			<c:url var="prodcutDetailsUrl" value="/prodcutDetail">
				<c:param name="prodcutName" value="${product.imageName}" />
			</c:url>
			<c:url value="/img/${product.imageName}" var="picture" />
			<a href="${prodcutDetailsUrl}"><img class="image_style"
				src="${picture}" width=200px></a>
			<div>
				<ul>

					<li><c:out value="${product.name}" /><font color = "red";>
					<c:out value="${product.topSeller ? 'Best Seller!': ''}" /></font></li>
					<li><c:out value="by ${product.manufacturer}" /></li>
					<li><font color = "crimson";><c:out value="$ ${product.price}" /></font></li>
					<li><c:out value="${product.weightInLbs} lbs" /></li>


					<fmt:formatNumber value="${product.averageRating}"
						maxFractionDigits="0" var="star" />
					<c:url value="/img/${star}-star.png" var="averageRating" />
					<img class="image_rating" src="${averageRating}" width=100px
						height=20px>
				</ul>
			</div>
		</div>
	</c:forEach>
</div>



<%@ include file="common/footer.jspf"%>