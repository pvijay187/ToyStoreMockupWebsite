<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<c:set var="pageTitle" value="Product List View" />
<%@ include file="common/header.jspf"%>

<h2>Toy Department</h2>
<table class = "collapse">
	<c:forEach var="product" items="${productList}">
		<tr class="border_bottom">
			<td>
			<c:url var="productDetailsUrl" value="/productDetail">
					<c:param name="productId" value="${product.productId }" />
				</c:url> 
				<c:url value="/img/${product.imageName}" var="picture" /><a
				href="${productDetailsUrl }"><img class="image_style"
					src="${picture}" width=200px></a> </td>
			<td>
				<ul class=list>

					<li><strong><c:out value="${product.name}" /></strong><font color = "red";><c:out
							value="${product.topSeller ? ' Best Seller!': ''}" /></font> </li>
					<li><c:out value="by ${product.manufacturer}" /></li>
					<li><font color = "crimson"; size = "5px";><c:out value="$ ${product.price}" /></font></li>
					<li><strong><c:out value = "Weight"/></strong>
					<c:out value="${product.weightInLbs} lbs" /></li>
					<li class="star"><fmt:formatNumber
							value="${product.averageRating}" maxFractionDigits="0" var="star" />
						<c:url value="/img/${star}-star.png" var="averageRating" /> <img
						class="image_rating" src="${averageRating}" height=20px;
						width=100px;></li>

				</ul>
 
			</td>
	</c:forEach>




</table>

<%@ include file="common/footer.jspf"%>

